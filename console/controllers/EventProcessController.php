<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/06/2017
 * Time: 10:35 CH
 */
namespace console\controllers;

use backend\models\Student;
use common\components\Utility;
use frontend\models\Event;
use Yii;
use yii\console\Controller;

define('DAY_PROMOTION', 5);

class EventProcessController extends Controller
{
    // thành viên tích cực
    public function actionEventUserPositive()
    {
        $now = date('Y-m-d');
        $five_day_ago = date('Y-m-d', strtotime(date('Y-m-d') . ' -5 days'));
        // lấy những thành viên truy cập 5 ngày liên tiếp
        $rs = [];
        foreach (Utility::getDatesFromRange($five_day_ago, $now) as $date) {
            $sql = "SELECT user_id, COUNT(user_id) as total_visits 
                FROM session 
                WHERE created_time >= '" . $date . " 00:00:00' 
                AND created_time <= '" . $date . " 23:59:59' 
                AND user_id > 0
                GROUP BY user_id
                ORDER BY total_visits desc";
            $data = Yii::$app->db->createCommand($sql)->queryAll();
            foreach ($data as $dt) {
                if (!isset($rs[$dt['user_id']])) {
                    $rs[$dt['user_id']] = 0;
                } else {
                    $rs[$dt['user_id']] += 1;
                }
            }
        }
        foreach ($rs as $k => $v) {
            if ($v >= 5) {
                $event = Event::find()->where(['id' => 1])
                    ->andWhere('from_date <= "' . date('Y-m-d') . '" AND to_date >= "' . date('Y-m-d') . '"')
                    ->andWhere(['status' => 1])
                    ->one();
                if (!empty($event)) {
                    $student = Student::findOne(['user_id' => $k]);
                    if (!empty($student)) {
                        $student->balance += $event['money'];           // update balance student
                        if ($student->save()) {
                            // log to event_log
                            Yii::$app->db->createCommand()->insert('event_log', [
                                'user_id' => $k,
                                'event_id' => 2,
                                'point' => $event['point'],
                                'money' => $event['money'],
                                'created_time' => date('Y-m-d H:i:s')
                            ])->execute();

                            // create notification to user
                            Yii::$app->db->createCommand()->insert('notification', [
                                'sender_id' => 0,
                                'receiver_id' => $k,
                                'type' => 'system_feedback',
                                'content' => "Xin chúc mừng, bạn đã được cộng thêm " . number_format($v) . ' point khi là thành viên tích cực của hệ thống',
                                'status' => 0,
                                'created_time' => date('Y-m-d H:i:s')
                            ])->execute();
                        }
                    }
                }
            }
        }
    }
}