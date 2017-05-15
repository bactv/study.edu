<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "lesson_quiz_question".
 *
 * @property integer $id
 * @property integer $lesson_id
 * @property integer $quiz_id
 * @property string $question
 */
class LessonQuizQuestionDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lesson_quiz_question';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['lesson_id', 'quiz_id', 'question'], 'required'],
            [['lesson_id', 'quiz_id'], 'integer'],
            [['question'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'lesson_id' => Yii::t('cms', 'Lesson ID'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'question' => Yii::t('cms', 'Question'),
        ];
    }
}
