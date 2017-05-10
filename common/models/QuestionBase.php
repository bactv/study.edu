<?php

namespace common\models;

use Yii;


class QuestionBase extends \common\models\db\QuestionDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'content' => Yii::t('cms', 'Nội dung câu hỏi'),
            'status' => Yii::t('cms', 'Trạng thái'),
            'subject_id' => Yii::t('cms', 'Môn học'),
            'topic_id' => Yii::t('cms', 'Chuyên đề'),
            'quiz_id' => Yii::t('cms', 'Đề thi'),
            'solution' => Yii::t('cms', 'Hướng dẫn giải'),
        ];
    }
}
