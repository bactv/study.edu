<?php

namespace common\models;

use Yii;


class AdminBase extends \common\models\db\AdminDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'username' => Yii::t('cms', 'Tên đăng nhập'),
            'password' => Yii::t('cms', 'Mật khẩu'),
            'full_name' => Yii::t('cms', 'Họ và tên'),
            'email' => Yii::t('cms', 'Email'),
            'profession' => Yii::t('cms', 'Nghề nghiệp'),
            'birthday' => Yii::t('cms', 'Ngày sinh'),
            'thumb' => Yii::t('cms', 'Thumb'),
            'status' => Yii::t('cms', 'Trạng thái'),
            'deleted' => Yii::t('cms', 'Xóa'),
            'last_active_time' => Yii::t('cms', 'Đăng nhập lần cuối'),
            'group_ids' => Yii::t('cms', 'Nhóm quyền'),
            'created_by' => Yii::t('cms', 'Người tạo'),
            'updated_by' => Yii::t('cms', 'Người cập nhật'),
            'created_time' => Yii::t('cms', 'Thời gian tạo'),
            'updated_time' => Yii::t('cms', 'Thời gian cập nhật'),
        ];
    }
}
