<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class QuizBase extends \common\models\db\QuizDB
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
