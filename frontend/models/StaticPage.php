<?php

namespace frontend\models;

use Yii;


class StaticPage extends \common\models\StaticPageBase
{
    public static function get_by_code($code)
    {
        return self::findOne(['type' => $code]);
    }
}