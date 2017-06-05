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
use frontend\models\LessonQuizQuestion;
use Yii;
use yii\web\Controller;
use yii\web\ForbiddenHttpException;
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

        Yii::$app->db->createCommand("UPDATE lesson SET number_view=number_view+1 WHERE id=$id")->execute();

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

    public function actionQuizDetail($id)
    {
        $this->layout = 'student_lesson_layout';
        $id = Utility::encrypt_decrypt('decrypt', $id);
        $quiz = LessonQuiz::findOne(['id' => $id]);
        if (empty($quiz)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        // check permission
        $user = Yii::$app->user->identity;
        if (empty($user) || $user->type != 1) {
            throw new ForbiddenHttpException("Bạn không có quyền truy cập trang này.");
        }

        // check user đã vượt qua bài thi trước đó hay chưa.
        $lesson = Lesson::findOne(['id' => $quiz['lesson_id']]);
        $course = Course::findOne(['id' => $lesson['course_id']]);
        $lesson_quiz = LessonQuiz::findAll(['lesson_id' => $lesson['id']]);
        $lesson_document = LessonDocument::findAll(['lesson_id' => $lesson['id']]);

        Yii::$app->params['lesson'] = $lesson;
        Yii::$app->params['course'] = $course;
        Yii::$app->params['lesson_quiz'] = $lesson_quiz;
        Yii::$app->params['lesson_document'] = $lesson_document;
        Yii::$app->params['quiz'] = $quiz;

        return $this->render('quiz_detail', [
            'quiz' => $quiz
        ]);
    }

    public function actionDoQuiz($id)
    {
        $this->layout = 'student_lesson_layout';
        $id = Utility::encrypt_decrypt('decrypt', $id);
        $quiz = LessonQuiz::findOne(['id' => $id]);
        if (empty($quiz)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu khoongg tìm thấy.");
        }
        // check permission
        $user = Yii::$app->user->identity;
        if (empty($user) || $user->type != 1) {
            throw new ForbiddenHttpException("Bạn không có quyền truy cập trang này.");
        }
        // check user đã vượt qua bài thi trước đó hay chưa.
        $lesson = Lesson::findOne(['id' => $quiz['lesson_id']]);
        $course = Course::findOne(['id' => $lesson['course_id']]);
        $lesson_quiz = LessonQuiz::findAll(['lesson_id' => $lesson['id']]);
        $lesson_document = LessonDocument::findAll(['lesson_id' => $lesson['id']]);

        Yii::$app->params['lesson'] = $lesson;
        Yii::$app->params['course'] = $course;
        Yii::$app->params['lesson_quiz'] = $lesson_quiz;
        Yii::$app->params['lesson_document'] = $lesson_document;
        Yii::$app->params['quiz'] = $quiz;

        $arr_lesson_ids = Lesson::get_array_lesson_ids_order($lesson['course_id']);
        $cur_index = array_search($lesson['id'], $arr_lesson_ids);

        if ($cur_index > 0) {
            $index = $cur_index - 1;
            $prev_lesson = Lesson::findOne(['id' => $index]);
            // check complete prev_lesson
            $check = Lesson::check_user_complete_lesson($prev_lesson['id'], $user->getId());
            if (!$check) {
                throw new ForbiddenHttpException("Bạn chưa hoàn thành bài học trước đó. Hãy hoàn thiện nó.");
            }
        }

        $questions = LessonQuizQuestion::findAll(['quiz_id' => $quiz['id']]);




        return $this->render('do_quiz', [
            'quiz' => $quiz,
            'questions' => $questions
        ]);
    }

    public function actionReviewQuiz($id)
    {
        return $this->render('review_quiz', [

        ]);
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