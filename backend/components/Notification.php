<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/06/2017
 * Time: 10:07 SA
 */
namespace backend\components;

use backend\models\CourseNews;
use common\models\FreeStudentCourseBase;
use common\models\StudentCourseBase;
use frontend\models\Course;
use Yii;

class Notification
{
    /**
     * Tạo thông báo đến học sinh: khi giáo viên tạo một thông báo mới
     * @param $course_id
     * @param $course_news_id
     */
    public static function create_notification($course_id, $course_news_id)
    {
        $arr_students = [];
        // lấy danh sách mọi học sinh trong khóa học
        $student_course = StudentCourseBase::findAll(['course_id' => $course_id]);
        foreach ($student_course as $item) {
            $arr_students[] = $item->student_id;
        }

        // lấy danh sách mọi học sinh học thử khóa học và vẫn còn số buổi học thử
        $student_try_course = FreeStudentCourseBase::find()->where(['course_id' => $course_id])
            ->andWhere('number_lesson_learning < "' . Yii::$app->params['number_try_lesson'] . '"')
            ->all();
        foreach ($student_try_course as $item) {
            $arr_students[] = $item['student_id'];
        }

        $arr_students = array_unique($arr_students);

        $course = Course::findOne(['id' => $course_id]);
        $course_news = CourseNews::findOne(['id' => $course_news_id]);

        $arr_data = [];
        foreach ($arr_students as $id) {
            $arr_data[] = [
                0,
                $id,
                'system_feedback',
                '[THÔNG BÁO - ' . $course['name'] . ']' . $course_news->title,
                0,
                date('Y-m-d H:i:s'),
            ];
        }

        Yii::$app->db->createCommand()->batchInsert('notification', [
            'sender_id', 'receiver_id', 'type', 'content', 'status', 'created_time'
        ], $arr_data)->execute();
    }
}