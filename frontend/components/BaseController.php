<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 01/06/2017
 * Time: 8:42 CH
 */
namespace frontend\components;

use Yii;
use yii\web\Controller;
use Detection\MobileDetect;

class BaseController extends Controller
{
    public function init()
    {
    }

    private function log_to_session()
    {
        $model = new MobileDetect();
        var_dump($model->getUserAgent());
    }
}