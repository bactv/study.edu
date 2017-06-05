<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "event_log".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $event_id
 * @property integer $experience
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
            [['user_id', 'event_id', 'experience'], 'integer'],
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
            'user_id' => Yii::t('cms', 'User ID'),
            'event_id' => Yii::t('cms', 'Event ID'),
            'experience' => Yii::t('cms', 'Experience'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
