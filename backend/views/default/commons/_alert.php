<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 10/05/2017
 * Time: 7:49 CH
 */
use yii\bootstrap\Alert;
if (Yii::$app->session->hasFlash('error')) {
    echo Alert::widget([
        'options' => ['class' => 'alert-danger'],
        'body' => Yii::$app->session->getFlash('error'),
    ]);
} else if (Yii::$app->session->hasFlash('success')) {
    echo Alert::widget([
        'options' => ['class' => 'alert-success'],
        'body' => Yii::$app->session->getFlash('success'),
    ]);
}