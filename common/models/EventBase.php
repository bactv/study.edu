<?php

namespace common\models;

use Yii;


class EventBase extends \common\models\db\EventDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Sự kiện'),
            'event_group' => Yii::t('cms', 'Nhóm sự kiện'),
            'description' => Yii::t('cms', 'Mô tả'),
            'point' => Yii::t('cms', 'Tặng Point'),
            'money' => Yii::t('cms', 'Tặng tiền'),
            'status' => Yii::t('cms', 'Status'),
            'from_date' => Yii::t('cms', 'Ngày bắt đầu'),
            'to_date' => Yii::t('cms', 'Ngày kết thúc'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
