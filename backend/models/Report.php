<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 17/05/2017
 * Time: 11:40 SA
 */
namespace backend\models;

use Yii;

class Report
{
    public static function access_statistic($from_date, $to_date)
    {
        $sql = "SELECT
                COUNT(id) as total_visits,
                COUNT(DISTINCT CASE WHEN (user_id <> '' AND user_id IS NOT NULL) THEN user_id END) as total_user_visits,
                COUNT(DISTINCT CASE WHEN (user_id = '' OR user_id IS NULL) THEN user_ip END) as total_guest_visits
                FROM session
                WHERE created_time >= '" . $from_date . "' 
                AND created_time <= '" . $to_date . "'";
        $data = Yii::$app->db->createCommand($sql)->queryAll();
        return $data;
    }

    public static function total_statistic($from_date, $to_date)
    {
        // đăng ký
        $sql = "SELECT COUNT(id) FROM user WHERE created_time >= '" . $from_date . "' AND created_time <= '" . $to_date . "'";
        $data['total_subscribe'] = (int)Yii::$app->db->createCommand($sql)->queryScalar();

        // số lượt nạp tiền
        $sql = "SELECT COUNT(request_id) as total_charge,
                SUM(PRICE) as total_revenue_charge
                FROM transaction 
                WHERE created_time >= '" . $from_date . "' AND created_time <= '" . $to_date . "'
                AND ACTION = 'CHARGE_MONEY'";
        $dt = Yii::$app->db->createCommand($sql)->queryAll();
        $data['total_charge'] = (int)$dt[0]['total_charge'];
        $data['total_revenue_charge'] = (int)$dt[0]['total_revenue_charge'];
        return $data;
    }
}