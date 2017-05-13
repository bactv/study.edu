<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:50 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\Course;
use frontend\models\Lesson;
use frontend\models\LessonQuiz;
use frontend\models\Subject;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class CourseController extends Controller
{
    public function actionIndex($category = '')
    {
        $subject = null;
        if ($category != '') {
            $subject = Subject::findOne(['name_n' => $category]);
            if (empty($subject)) {
                throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy!");
            }
        }
        return $this->render('index', [
            'subject' => $subject
        ]);
    }

    public function actionIntro($str)
    {
        $course_id = $this->check_url($str);
        $course = Course::get_course_by_id($course_id);
        if ($course_id == '' || empty($course)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $lessons = Lesson::findAll(['course_id' => $course['id']]);
        $lesson_quiz = LessonQuiz::findAll(['course_id' => $course['id']]);
        if ($course['course_type_id'] == 1) {
            return $this->render('video_intro', [
                'course' => $course,
                'lessons' => $lessons,
                'lesson_quiz' => $lesson_quiz
            ]);
        }
    }

    public function actionDetail()
    {
        return $this->render('video_detail');
    }

    private function check_url($str)
    {
        $id = '';
        if (preg_match('/[0-9a-zA-Z\-]+[-cn][0-9a-zA-Z\-]+/', $str)) {
            $ex = explode('cn', $str);
            if (isset($ex[1])) {
                $id = Utility::encrypt_decrypt('decrypt', trim($ex[1]));
                if (!is_numeric($id)) {
                    $id = '';
                }
            }
        }
        return $id;
    }
}