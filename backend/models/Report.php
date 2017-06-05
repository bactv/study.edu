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
}