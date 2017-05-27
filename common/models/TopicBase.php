<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class TopicBase extends \common\models\db\TopicDB
{
    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time', 'updated_time'],
                    self::EVENT_BEFORE_UPDATE => ['updated_time'],
                ]
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Tên chuyên đề'),
            'description' => Yii::t('cms', 'Mô tả chuyên đề'),
            'subject_id' => Yii::t('cms', 'Môn học'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
            'updated_time' => Yii::t('cms', 'Ngày cập nhật'),
        ];
    }

    public static function getAttributeValue($conditions, $attribute)
    {
        $obj = self::findOne([$conditions]);
        if (!empty($obj) && isset($obj->{$attribute})) {
            return $obj->{$attribute};
        }
        return '';
    }
}
