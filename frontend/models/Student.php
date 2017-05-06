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
}