<?php

namespace frontend\models;

use Yii;


class Quiz extends \common\models\QuizBase
{
    public static function get_quiz_by_id($quiz_id)
    {
        return self::findOne(['id' => $quiz_id, 'status' => 1]);
    }
}