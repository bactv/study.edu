<?php

namespace common\models;

use Yii;


class SubjectBase extends \common\models\db\SubjectDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Tên môn học'),
            'short_name' => Yii::t('cms', 'Tên rút gọn'),
            'name_n' => Yii::t('cms', 'Tên quy chuẩn'),
            'icon' => Yii::t('cms', 'Icon'),
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
