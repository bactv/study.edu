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

    public static function get_leaderboard_data($type = 'week', $quiz_type_id = '2', $subject_id = '')
    {
        $now = date('Y-m-d H:i:s');
        $day = date('w') - 1;
        $start_week = date('Y-m-d 00:00:00', strtotime('-' . $day . ' days'));;
        $start_month = date('Y-m-01 00:00:00');
        $sql = "SELECT 
                    t1.user_id,
                    SUM(t1.score) as total_score,
                    SUM(t1.time_complete) as total_time_complete,
                    COUNT(t1.id) as total_user_quiz
                    
                    FROM quiz_score as t1
                    INNER JOIN quiz as t2 ON t2.id=t1.quiz_id
                    WHERE t2.quiz_type_id='" . $quiz_type_id . "'";
        if ($type == 'week') {
            $sql .= " AND t1.created_time >= '" . $start_week . "' 
                      AND t1.created_time <= '" . $now . "'";
        } else {
            $sql .= " AND t1.created_time >= '" . $start_month . "' 
                      AND t1.created_time <= '" . $now . "'";
        }
        if ($subject_id != '') {
            $sql .= " AND t2.subject_id='" . $subject_id . "'";
        }
        $sql .= " GROUP BY t1.user_id";
        $data = Yii::$app->db->createCommand($sql)->queryAll();

        $results = [];
        foreach ($data as $dt) {
            $results[] = [
                'user_id' => $dt['user_id'],
                'score' => $dt['total_user_quiz'] != 0 ? number_format($dt['total_score'] / $dt['total_user_quiz'], 2) : 0,
                'time_complete' => $dt['total_user_quiz'] != 0 ? number_format($dt['total_time_complete'] / $dt['total_user_quiz'], 2) : 0,
            ];
        }

        // sắp xếp
        for ($i = 0; $i <= count($results); $i++) {
            for ($j = $i + 1; $j < count($results); $j++) {
                if (isset($results[$i]) && isset($results[$j])) {
                    if ($results[$i]['score'] < $results[$j]['score']) {
                        $temp = $results[$i];
                        $results[$i] = $results[$j];
                        $results[$j] = $temp;
                    } else if (($results[$i]['score'] == $results[$j]['score']) && ($results[$i]['time_complete'] < $results[$j]['time_complete'])) {
                        $temp = $results[$i];
                        $results[$i] = $results[$j];
                        $results[$j] = $temp;
                    }
                }
            }
        }
        return $results;
    }
}