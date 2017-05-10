<?php

namespace backend\models;

use Yii;
use yii\db\Query;


class Teacher extends \common\models\TeacherBase
{
    public static function get_all_teacher_active()
    {
        return (new Query())
            ->select('t1.*')
            ->from('teacher as t1')
            ->innerJoin('user as t2', 't2.id=t1.user_id')
            ->where(['t2.status' => 1, 't2.deleted' => 0])
            ->all();
    }
}