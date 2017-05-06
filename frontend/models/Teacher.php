<?php

namespace frontend\models;

use Yii;


class Teacher extends \common\models\TeacherBase
{
    public static function save_data($user_id, $full_name)
    {
        $model = new Teacher();
        $model->user_id = $user_id;
        $model->full_name = $full_name;

        return $model->save();
    }
}