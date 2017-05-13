<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:15 CH
 */
namespace frontend\controllers;

use frontend\models\Course;
use frontend\models\Subject;
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
        return $this->render('detail', [
            'subject' => $subject,
            'courses' => $courses,
            'page' => $page
        ]);
    }
}