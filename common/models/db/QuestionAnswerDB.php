<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "question_answer".
 *
 * @property integer $ans_id
 * @property integer $question_id
 * @property string $content
 * @property integer $is_true
 */
class QuestionAnswerDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'question_answer';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['question_id'], 'required'],
            [['question_id', 'is_true'], 'integer'],
            [['content'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ans_id' => Yii::t('cms', 'Ans ID'),
            'question_id' => Yii::t('cms', 'Question ID'),
            'content' => Yii::t('cms', 'Content'),
            'is_true' => Yii::t('cms', 'Is True'),
        ];
    }
}
