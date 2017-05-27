<?php

namespace backend\models;

use common\behaviors\TimestampBehavior;
use Yii;


class Topic extends \common\models\TopicBase
{
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('created_time', 'updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('updated_time')
                )
            ),
        );
    }

    public static function delete_topic($id)
    {
        $model = self::findOne(['id' => $id]);
        if (!empty($model)) {
            $model->deleted = 1;
            if ($model->save()) {
                Yii::$app->db->createCommand()->update('quiz', ['deleted' => 1], ['topic_id' => $id])->execute();
            }
        }
    }
}