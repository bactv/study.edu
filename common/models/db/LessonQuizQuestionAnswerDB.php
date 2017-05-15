<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "lesson_quiz_question_answer".
 *
 * @property integer $ans_id
 * @property integer $lesson_id
 * @property integer $question_id
 * @property string $ans_content
 * @property integer $is_true
 */
class LessonQuizQuestionAnswerDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lesson_quiz_question_answer';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['lesson_id', 'question_id', 'ans_content'], 'required'],
            [['lesson_id', 'question_id', 'is_true'], 'integer'],
            [['ans_content'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ans_id' => Yii::t('cms', 'Ans ID'),
            'lesson_id' => Yii::t('cms', 'Lesson ID'),
            'question_id' => Yii::t('cms', 'Question ID'),
            'ans_content' => Yii::t('cms', 'Ans Content'),
            'is_true' => Yii::t('cms', 'Is True'),
        ];
    }
}
