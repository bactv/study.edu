<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:15 CH
 */
namespace frontend\controllers;

use frontend\models\Course;
use frontend\models\Quiz;
use frontend\models\Subject;
use frontend\models\Teacher;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class SubjectController extends Controller
{
    public function actionDetail($id)
    {
        $subject = Subject::findOne(['name_n' => $id]);
        if (empty($subject)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy!");
        }
        $page = Yii::$app->request->get('page', 1);
        $params = [
            'subject_id' => $subject['id'],
        ];
        $courses = Course::get_list_feature_course(8, $page, $params);
        $list_quiz = Quiz::get_list_quiz(10, ['subject_id' => $subject['id']]);
        $list_teacher = Teacher::get_list_teacher_by_subject($subject['id']);
        return $this->render('detail', [
            'subject' => $subject,
            'courses' => $courses,
            'page' => $page,
            'list_quiz' => $list_quiz,
            'list_teacher' => $list_teacher
        ]);
    }
}