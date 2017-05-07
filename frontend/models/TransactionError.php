<?php

namespace frontend\models;

use Yii;


class TransactionError extends \common\models\TransactionErrorBase
{
    public static function check_over_five_times($user_id, $code = '')
    {
        $sql = "SELECT COUNT(request_id) as total
                FROM transaction_error
                WHERE user_id=" . $user_id . " 
                AND created_time >= '" . date('Y-m-d H:i', strtotime(date('Y-m-d H:i') . ' -30 minutes')) . "' 
                AND action = 'CHARGE_MONEY'";
        if ($code != '') {
            $sql .= ' AND code="' . $code . '"';
        }
        $rs = Yii::$app->db->createCommand($sql)->queryScalar();
        return intval($rs);
    }
}