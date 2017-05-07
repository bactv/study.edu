<?php

namespace common\models;

use Yii;


class SubjectBase extends \common\models\db\SubjectDB
{
    public static function getAttributeValue($conditions, $attribute)
    {
        $obj = self::findOne([$conditions]);
        if (!empty($obj) && isset($obj->{$attribute})) {
            return $obj->{$attribute};
        }
        return '';
    }
}
