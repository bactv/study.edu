<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class TeacherBase extends \common\models\db\TeacherDB
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
            'user_id' => Yii::t('cms', 'Mã Giáo viên'),
            'full_name' => Yii::t('cms', 'Họ và tên'),
            'email' => Yii::t('cms', 'Email'),
            'gender' => Yii::t('cms', 'Giới tính'),
            'intro' => Yii::t('cms', 'Giới thiệu'),
            'work_place' => Yii::t('cms', 'Địa chỉ công tác'),
            'phone' => Yii::t('cms', 'Số điện thoại'),
            'degree' => Yii::t('cms', 'Học hàm'),
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
