<?php

namespace backend\models;

use Yii;


class Notification extends \common\models\NotificationBase
{
    public static function list_new_notification()
    {
        $allData = self::find()->where(['status' => 0])
            ->andWhere(['receiver_id' => 0])
            ->orderBy('created_time DESC')
            ->all();
        return $allData;
    }

    public static function get_all_receiver()
    {
        $arr_data = ['-- Học sinh --' => [], '-- Giáo viên --' => []];
        $all_students = User::findAll(['deleted' => 0, 'status' => 1, 'type' => 1]);
        $all_trachers = User::findAll(['deleted' => 0, 'status' => 1, 'type' => 2]);
        foreach ($all_students as $item) {
            $arr_data['-- Học sinh --'][$item['id']] = $item['username'];
        }
        foreach ($all_trachers as $item) {
            $arr_data['-- Giáo viên --'][$item['id']] = $item['username'];
        }
        return $arr_data;
    }
}