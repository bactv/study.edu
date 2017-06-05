<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 01/06/2017
 * Time: 8:42 CH
 */
namespace frontend\components;

use frontend\models\Session;
use Yii;
use yii\web\Controller;
use Detection\MobileDetect;

class BaseController extends Controller
{
    public function init()
    {
        $this->log_to_session();
    }

    private function log_to_session()
    {
        $user_ip = Yii::$app->request->getUserIP();
        $user = !empty(Yii::$app->user->identity) ? Yii::$app->user->identity : '';
        if (!empty($user) && $user->type == 1) {
            $user_id = $user->getId();
        } else {
            $user_id = '';
        }
        $detect = new MobileDetect();
        if ($detect->isMobile()) {
            $device = 'mobile';
        } else if ($detect->isTablet()) {
            $device = 'tablet';
        } else {
            $device = 'laptop';
        }
        $model = new Session();
        $model->user_id = $user_id;
        $model->user_ip = $user_ip;
        $model->device = $device;
        $model->created_time = date('Y-m-d H:i:s');

        if (!isset($_SESSION['user_ip_' . $user_ip])) {
            $model->save();
            $_SESSION['user_ip_' . $user_ip] = time();
        }
        if (isset($_SESSION['user_ip_' . $user_ip]) && time() > (intval($_SESSION['user_ip_' . $user_ip]) + 2 * 60 * 60)) {
            $model->save();
            $_SESSION['user_ip_' . $user_ip] = time();
        }
    }
}