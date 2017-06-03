<?php

namespace common\models;

use Yii;


class NotificationBase extends \common\models\db\NotificationDB
{
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
