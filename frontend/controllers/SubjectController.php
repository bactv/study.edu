<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:15 CH
 */
namespace frontend\controllers;

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
        return $this->render('detail', [
            'subject' => $subject
        ]);
    }
}