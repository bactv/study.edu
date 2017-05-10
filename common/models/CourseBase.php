<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class CourseBase extends \common\models\db\CourseDB
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

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'Mã khóa học'),
            'name' => Yii::t('cms', 'Tên khóa học'),
            'teacher_ids' => Yii::t('cms', 'Giáo viên'),
            'party_id' => Yii::t('cms', 'Đối tượng cung cấp'),
            'description' => Yii::t('cms', 'Mô tả khóa học'),
            'deadline_register' => Yii::t('cms', 'Hạn đăng ký'),
            'status' => Yii::t('cms', 'Trạng thái'),
            'deleted' => Yii::t('cms', 'Xóa'),
            'approved' => Yii::t('cms', 'Phê duyệt'),
            'approver' => Yii::t('cms', 'Người phê duyệt'),
            'price' => Yii::t('cms', 'Học phí'),
            'course_type_id' => Yii::t('cms', 'Hình thức khóa học'),
            'subject_id' => Yii::t('cms', 'Môn học'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
            'updated_time' => Yii::t('cms', 'Ngày cập nhật'),
        ];
    }
}
