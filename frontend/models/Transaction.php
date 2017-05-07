<?php

namespace frontend\models;

use Yii;


class Transaction extends \common\models\TransactionBase
{
    public static function logTransaction($user_id, $action, $price, $content, $response, $user_balance = 0)
    {
        $trans = new Transaction();
        $trans->user_id = $user_id;
        $trans->action = $action;
        $trans->price = $price;
        $trans->content = $content;
        $trans->response = $response;
        $trans->user_balance = $user_balance;
        $trans->created_time = date('Y-m-d H:i:s');
        $trans->save();
    }
}