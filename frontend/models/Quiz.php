<?php

namespace frontend\models;

use Yii;
use yii\db\Query;


class Quiz extends \common\models\QuizBase
{
    public static function get_quiz_by_id($quiz_id)
    {
        return self::findOne(['id' => $quiz_id, 'status' => 1]);
    }

    public static function get_list_quiz($limit = 6, $params = [])
    {
        $query = (new Query())
            ->select(['quiz.*', 'subject.name as subject_name', 'subject.icon as subject_icon', 'subject.icon_color as icon_color'])
            ->from('quiz')
            ->innerJoin('subject', 'subject.id=quiz.subject_id')
            ->where(['status' => 1]);

        if (isset($params['subject_id']) && $params['subject_id'] > 0) {
            $query->andWhere(['subject_id' => $params['subject_id']]);
        }
        return $query->orderBy('updated_time DESC')
            ->limit($limit)
            ->all();
    }
}