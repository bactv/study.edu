<?php

namespace backend\models;

use Yii;


class Question extends \common\models\QuestionBase
{
    public $ans_1;
    public $ans_2;
    public $ans_3;
    public $ans_4;
    public $ans_5;
    public $is_true;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['content', 'quiz_id'], 'required'],
            [['status', 'subject_id', 'topic_id', 'quiz_id'], 'integer'],
            [['solution'], 'string'],
            [['content'], 'string'],
            [['ans_1', 'ans_2', 'ans_3', 'ans_4', 'ans_5', 'is_true'], 'string'],
        ];
    }

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
            'ans_1' => 'Đáp án 1',
            'ans_2' => 'Đáp án 2',
            'ans_3' => 'Đáp án 3',
            'ans_4' => 'Đáp án 4',
            'ans_5' => 'Đáp án 5',
        ];
    }
}