<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class StudentBase extends \common\models\db\StudentDB
{
    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time', 'updated_time'],
                    self::EVENT_BEFORE_UPDATE => ['updated_time']
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
            'user_id' => Yii::t('cms', 'Mã học sinh'),
            'full_name' => Yii::t('cms', 'Họ và tên'),
            'birthday' => Yii::t('cms', 'Ngày sinh'),
            'school' => Yii::t('cms', 'Trường học'),
            'email' => Yii::t('cms', 'Email'),
            'phone' => Yii::t('cms', 'Số ĐT'),
            'balance' => Yii::t('cms', 'Số dư tài khoản'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
            'updated_time' => Yii::t('cms', 'Ngày cập nhật'),
        ];
    }
}
