<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 1:07 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\Course;
use frontend\models\Lesson;
use frontend\models\LessonDocument;
use frontend\models\LessonQuiz;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class LessonController extends Controller
{
    public function actionDetail($str)
    {
        $this->layout = 'student_lesson_layout';
        $id = $this->check_url($str);
        $lesson = Lesson::findOne(['id' => $id]);
        if ($id == '' || empty($lesson)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy");
        }
        $course = Course::findOne(['id' => $lesson['course_id']]);
        $lesson_quiz = LessonQuiz::findAll(['lesson_id' => $lesson['id']]);
        $lesson_document = LessonDocument::findAll(['lesson_id' => $lesson['id']]);

        Yii::$app->params['lesson'] = $lesson;
        Yii::$app->params['course'] = $course;
        Yii::$app->params['lesson_quiz'] = $lesson_quiz;
        Yii::$app->params['lesson_document'] = $lesson_document;
        return $this->render('video_detail', [
            'lesson' => $lesson,
            'course' => $course
        ]);
    }

    public function actionQuiz()
    {
        $this->layout = 'student_lesson_layout';
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