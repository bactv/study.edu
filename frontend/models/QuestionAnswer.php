<?php

namespace frontend\models;

use Yii;


class QuestionAnswer extends \common\models\QuestionAnswerBase
{
    public static function check_answer($question_id, $answer_id)
    {
        $check = false;
        $obj = self::findOne(['question_id' => $question_id, 'ans_id' => $answer_id]);
        if (!empty($obj) && $obj->is_true == 1) {
            $check = true;
        }
        return $check;
    }
}