<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class TeacherBase extends \common\models\db\TeacherDB
{
    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time', 'updated_time'],
                    self::EVENT_BEFORE_UPDATE => ['updated_time']
                ]
            ]
        ];
    }
}
