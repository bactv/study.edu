<?php

namespace frontend\models;

use Yii;


class Slideshow extends \common\models\SlideshowBase
{
    public static function get_all_slideshows()
    {
        return self::find()->where(['status' => 1])->all();
    }
}