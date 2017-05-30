<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class LessonBase extends \common\models\db\LessonDB
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

    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'Mã bài học'),
            'course_id' => Yii::t('cms', 'Khóa học'),
            'name' => Yii::t('cms', 'Tên bài giảng'),
            'description' => Yii::t('cms', 'Mô tả'),
            'link_video' => Yii::t('cms', 'Link Video'),
            'time_length' => Yii::t('cms', 'Thời lượng'),
            'sort' => Yii::t('cms', 'Sort'),
            'number_view' => Yii::t('cms', 'Số lượt xem'),
            'status' => Yii::t('cms', 'Trạng thái'),
            'publish_date' => Yii::t('cms', 'Ngày dự kiến xuất bản'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
            'updated_time' => Yii::t('cms', 'Ngày cập nhật'),
        ];
    }

    public static function getAttributeValue($condition, $attribute)
    {
        $obj = self::findOne($condition);
        if (!empty($obj) && isset($obj->{$attribute})) {
            return $obj->{$attribute};
        }
        return "";
    }
}
