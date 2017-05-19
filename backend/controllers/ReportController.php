<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 17/05/2017
 * Time: 11:38 SA
 */
namespace backend\controllers;

use backend\components\BackendController;
use Yii;

class ReportController extends BackendController
{
    public function actionAccessStatistic()
    {
        return $this->render('access_statistic');
    }
}