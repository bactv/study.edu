<?php

namespace frontend\models;

use Yii;


class Student extends \common\models\StudentBase
{
    public static function save_data($user_id, $full_name)
    {
        $model = new Student();
        $model->user_id = $user_id;
        $model->full_name = $full_name;

        return $model->save();
    }

    public static function findById($user_id)
    {
        return self::findOne(['user_id' => $user_id]);
    }

    public static function charge_money($user_id, $balance = 0)
    {
        $user = Student::findOne(['user_id' => $user_id]);
        if (empty($user)) {
            return false;
        }
        $user->balance += $balance;
        if ($user->save()) {
            return true;
        }
        return false;
    }
}