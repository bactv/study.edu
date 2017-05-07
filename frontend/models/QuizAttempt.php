<?php

namespace frontend\models;

use Yii;


class QuizAttempt extends \common\models\QuizAttemptBase
{
    public static function get_total_attempts($quiz_id)
    {
        $query = "SELECT COUNT(id) as total
                  FROM quiz_attempt
                  WHERE quiz_id=" . $quiz_id;
        $rs = Yii::$app->db->createCommand($query)->queryScalar();
        return intval($rs);
    }
}