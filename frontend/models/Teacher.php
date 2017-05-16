<?php

namespace frontend\models;

use backend\models\Lesson;
use Yii;
use yii\data\ActiveDataProvider;
use yii\data\ArrayDataProvider;


class Teacher extends \common\models\TeacherBase
{
    public static function save_data($user_id, $full_name)
    {
        $model = new Teacher();
        $model->user_id = $user_id;
        $model->full_name = $full_name;

        return $model->save();
    }

    public static function get_list_teacher_feature($limit = 8)
    {
        $sql = "SELECT
                t1.*,
                COUNT(t2.course_id) as total_course_open
                FROM teacher as t1
                LEFT JOIN course_teacher as t2 ON t2.teacher_id=t1.user_id
                GROUP BY t1.user_id
                ORDER BY total_course_open DESC
                LIMIT " . $limit;
        $data = Yii::$app->db->createCommand($sql)->queryAll();
        return $data;
    }
    public static function findById($user_id)
    {
        return self::findOne(['user_id' => $user_id]);
    }

    public static function get_list_course_by_teacher($teacher_id)
    {
        $sql = "SELECT t2.*
                FROM course_teacher as t1
                INNER JOIN course as t2 ON t2.id=t1.course_id
                WHERE t1.teacher_id='" . $teacher_id . "' 
                AND deleted=0";
        $dataProvider = new ArrayDataProvider([
            'models' => Yii::$app->db->createCommand($sql)->queryAll()
        ]);
        return $dataProvider;
    }

    public static function get_course_by_teacher($course_id, $teacher_id)
    {
        $result = null;
        $obj = CourseTeacher::findOne(['teacher_id' => $teacher_id, 'course_id' => $course_id]);
        if (!empty($obj)) {
            $result = Course::findOne(['id' => $course_id, 'deleted' => 0]);
        }
        return $result;
    }

    public static function get_lesson_by_teacher($lesson_id, $course_id, $teacher_id)
    {
        $course = self::get_course_by_teacher($course_id, $teacher_id);
        if (empty($course)) {
            return null;
        }
        $lesson = Lesson::findOne(['id' => $lesson_id, 'course_id' => $course_id]);
        if (empty($lesson)) {
            return null;
        }
        return $lesson;
    }
}