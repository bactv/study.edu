<?php

namespace common\models;

use Yii;


class QuestionAnswerBase extends \common\models\db\QuestionAnswerDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ans_id' => Yii::t('cms', 'ID'),
            'question_id' => Yii::t('cms', 'Mã câu hỏi'),
            'content' => Yii::t('cms', 'Nội dung'),
            'is_true' => Yii::t('cms', 'Đáp án đúng?'),
        ];
    }
}
