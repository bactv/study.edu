<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class TopicBase extends \common\models\db\TopicDB
{
    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time', 'updated_time'],
                    self::EVENT_BEFORE_UPDATE => ['updated_time'],
                ]
            ]
        ];
    }
}
