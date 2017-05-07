<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 07/05/2017
 * Time: 12:43 CH
 */
namespace console\controllers;

use common\models\User;
use Yii;
use yii\console\Controller;

class ActiveAccountController extends Controller
{
    public function actionProcessActive()
    {
        $now = date('Y-m-d H:i:00');
        $all_accounts = User::find()
            ->where(['status' => 0])
            ->andWhere(['deleted' => 0])
            ->andWhere('active_time <= "' . $now . '"')
            ->all();
        echo "TOTAL: " . count($all_accounts);
        foreach ($all_accounts as $user) {
            Yii::$app->db->createCommand()->update('user', ['status' => 1], ['id' => $user->{'id'}])->execute();
        }
    }
}