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

    public static function check_quiz_not_complete($quiz_id, $user_id, $user_ip)
    {
        $attempt = self::find()
            ->where(['quiz_id' => $quiz_id])
            ->andWhere('user_id="' . $user_id . '" OR user_ip="' . $user_ip . '"')
            ->andWhere('time_remain > 0 AND status=0')
            ->one();
        return (!empty($attempt)) ? $attempt : null;
    }
}