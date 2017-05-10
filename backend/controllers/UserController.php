<?php

namespace backend\controllers;

use Yii;
use backend\models\User;
use common\models\search\UserSearch;
use backend\components\BackendController;
use yii\helpers\Url;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends BackendController
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    public function actionActiveAccount($id)
    {
        $user = User::findOne(['id' => $id, 'deleted' => 0]);
        if (!empty($user)) {
            $user->status = 1;
        }
        $session = Yii::$app->session;
        if ($user->save()) {
            $session->setFlash('success', 'Cập nhật thành công');
        } else {
            $session->setFlash('error', 'Có lỗi xảy ra.');
        }
        return $this->redirect($_SERVER['HTTP_REFERER']);
    }
}
