<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:50 CH
 */
namespace frontend\controllers;

use Yii;
use yii\web\Controller;

class CourseController extends Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }
}