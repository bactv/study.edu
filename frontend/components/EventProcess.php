<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/06/2017
 * Time: 10:09 CH
 */
namespace frontend\components;

use frontend\models\Event;
use frontend\models\Student;
use Yii;

class EventProcess
{
    public static function user_register_gift_promotion($user_id)
    {
        $event = Event::find()->where(['id' => 1])
                ->andWhere('from_date <= "' . date('Y-m-d') . '" AND to_date >= "' . date('Y-m-d') . '"')
                ->andWhere(['status' => 1])
                ->one();
        if (!empty($event)) {
            $student = Student::findOne(['user_id' => $user_id]);
            if (!empty($student)) {
                $student->balance += ($event['money'] * 1000);           // update balance student
                if ($student->save()) {
                    // log to event_log
                    Yii::$app->db->createCommand()->insert('event_log', [
                        'user_id' => $user_id,
                        'event_id' => 1,
                        'point' => 0,
                        'money' => $event['money'],
                        'created_time' => date('Y-m-d H:i:s')
                    ])->execute();

                    // create notification to user
                    Yii::$app->db->createCommand()->insert('notification', [
                        'sender_id' => 0,
                        'receiver_id' => $user_id,
                        'type' => 'system_feedback',
                        'content' => "Xin chúc mừng, tài khoản của bạn đã được cộng thêm " . number_format($event['money'] * 1000) . " VNĐ theo chương trình khuyến mãi của trung tâm",
                        'status' => 0,
                        'created_time' => date('Y-m-d H:i:s')
                    ])->execute();
                }
            }
        }
    }

    public static function user_charge_money_gift_promotion($user_id, $card_value)
    {
        $event = Event::find()->where(['id' => 3])
            ->andWhere('from_date <= "' . date('Y-m-d') . '" AND to_date >= "' . date('Y-m-d') . '"')
            ->andWhere(['status' => 1])
            ->one();
        if (!empty($event)) {
            $student = Student::findOne(['user_id' => $user_id]);
            if (!empty($student)) {
                $student->balance += 0.5 * $card_value;           // update balance student
                if ($student->save()) {
                    // log to event_log
                    Yii::$app->db->createCommand()->insert('event_log', [
                        'user_id' => $user_id,
                        'event_id' => 1,
                        'point' => 0,
                        'money' => 0.5 * $card_value,
                        'created_time' => date('Y-m-d H:i:s')
                    ])->execute();

                    // create notification to user
                    Yii::$app->db->createCommand()->insert('notification', [
                        'sender_id' => 0,
                        'receiver_id' => $user_id,
                        'type' => 'system_feedback',
                        'content' => "Xin chúc mừng, tài khoản của bạn đã được cộng thêm " . number_format(0.5 * $card_value) . " VNĐ theo chương trình khuyến mãi của trung tâm",
                        'status' => 0,
                        'created_time' => date('Y-m-d H:i:s')
                    ])->execute();
                }
            }
        }
    }
}