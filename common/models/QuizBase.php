<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;


class QuizBase extends \common\models\db\QuizDB
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
            'id' => Yii::t('cms', 'Mã đề thi'),
            'name' => Yii::t('cms', 'Tên đề thi'),
            'description' => Yii::t('cms', 'Mô tả'),
            'quiz_type_id' => Yii::t('cms', 'Loại đề thi'),
            'subject_id' => Yii::t('cms', 'Môn học'),
            'topic_id' => Yii::t('cms', 'Chuyên đề môn học'),
            'time_length' => Yii::t('cms', 'Thời gian thi'),
            'level' => Yii::t('cms', 'Trình độ'),
            'total_question' => Yii::t('cms', 'Tổng số câu hỏi'),
            'status' => Yii::t('cms', 'Trạng thái'),
            'privacy' => Yii::t('cms', 'Riêng tư'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
            'updated_time' => Yii::t('cms', 'Ngày cập nhật'),
        ];
    }
}
