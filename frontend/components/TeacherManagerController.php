<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 16/05/2017
 * Time: 2:23 CH
 */
namespace frontend\components;

use yii\web\Controller;
use Yii;
use yii\web\ForbiddenHttpException;

class TeacherManagerController extends Controller
{
    protected $_user = null;
    public function actions()
    {
        $user = !empty(Yii::$app->user->identity) ? Yii::$app->user->identity : null;
        if (empty($user) || $user->type != 2) {
            throw new ForbiddenHttpException("Bạn không có quyền truy cập trang này");
        }
        $this->_user = $user;
    }
}