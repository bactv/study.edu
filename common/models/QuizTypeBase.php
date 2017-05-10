<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class QuizTypeBase extends \common\models\db\QuizTypeDB
{
    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time', 'updated_time'],
                    self::EVENT_BEFORE_UPDATE => ['updated_time']
                ]
            ]
        ];
    }

    public static function getAttributeValue($conditions, $attr_return)
    {
        $object = self::find()->where($conditions)->one();
        if (!empty($object) && isset($object->{$attr_return})) {
            return $object->{$attr_return};
        }
        return '';
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'code' => Yii::t('cms', 'Mã loại đề thi'),
            'name' => Yii::t('cms', 'Tên loại đề thi'),
            'description' => Yii::t('cms', 'Mô tả'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
            'updated_time' => Yii::t('cms', 'Ngày cập nhật'),
        ];
    }
}
