<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "notification".
 *
 * @property integer $id
 * @property integer $sender_id
 * @property integer $receiver_id
 * @property string $type
 * @property string $content
 * @property integer $status
 * @property string $created_time
 */
class NotificationDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'notification';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sender_id', 'receiver_id', 'status'], 'integer'],
            [['receiver_id', 'type', 'content'], 'required'],
            [['content'], 'string'],
            [['created_time'], 'safe'],
            [['type'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'sender_id' => Yii::t('cms', 'Sender ID'),
            'receiver_id' => Yii::t('cms', 'Receiver ID'),
            'type' => Yii::t('cms', 'Type'),
            'content' => Yii::t('cms', 'Content'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
