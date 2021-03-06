<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "event_log".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $event_id
 * @property integer $point
 * @property integer $money
 * @property string $created_time
 */
class EventLogDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'event_log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'event_id'], 'required'],
            [['user_id', 'event_id', 'point', 'money'], 'integer'],
            [['created_time'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'user_id' => Yii::t('cms', 'Hoc sinh'),
            'event_id' => Yii::t('cms', 'Sự kiện'),
            'point' => Yii::t('cms', 'Tặng Point'),
            'money' => Yii::t('cms', 'Tặng tiền'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
