<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 28/05/2017
 * Time: 4:01 SA
 */
namespace console\controllers;

use console\components\ImportFileHelper;
use Yii;
use yii\base\Controller;

class ImportFileController extends Controller
{
    public function actionProcess($type = 'topic_subject')
    {
        ImportFileHelper::getInstance()->process($type);
    }
}