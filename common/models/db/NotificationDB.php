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
            [['type', 'content'], 'required'],
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
            'sender_id' => Yii::t('cms', 'Người gửi'),
            'receiver_id' => Yii::t('cms', 'Người nhận'),
            'type' => Yii::t('cms', 'Loại thông báo'),
            'content' => Yii::t('cms', 'Nội dung'),
            'status' => Yii::t('cms', 'Trạng thái'),
            'created_time' => Yii::t('cms', 'Ngày phản hồi'),
        ];
    }
}
