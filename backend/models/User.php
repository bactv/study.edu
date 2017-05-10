<?php

namespace backend\models;

use Yii;
use yii\db\Query;


class User extends \common\models\UserBase
{
    public static function getLastId()
    {
        $query = (new Query())
            ->select('max(id) as id')
            ->from('user')
            ->one();
        return $query;
    }
}