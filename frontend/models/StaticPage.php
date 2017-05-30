<?php

namespace frontend\models;

use Yii;


class StaticPage extends \common\models\StaticPageBase
{
    public static function get_by_code($code)
    {
        return self::findOne(['type' => $code]);
    }

    public static function get_content($code)
    {
        $obj = self::findOne(['type' => $code]);
        if (!empty($obj)) {
            return $obj->content;
        }
        return '';
    }
}