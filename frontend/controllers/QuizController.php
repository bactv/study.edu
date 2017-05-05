<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:48 CH
 */
namespace frontend\controllers;

use frontend\models\Subject;
use Yii;
use yii\web\Controller;

class QuizController extends Controller
{
    public function actionIndex()
    {
        $subjects = Subject::find()->asArray()->all();
        return $this->render('index', [
            'arr_subjects' => $subjects
        ]);
    }
}