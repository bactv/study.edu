<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "lesson_quiz".
 *
 * @property integer $id
 * @property integer $quiz_id
 * @property integer $lesson_id
 * @property integer $pass_exam
 */
class LessonQuizDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lesson_quiz';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['quiz_id', 'lesson_id'], 'required'],
            [['quiz_id', 'lesson_id', 'pass_exam'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'lesson_id' => Yii::t('cms', 'Lesson ID'),
            'pass_exam' => Yii::t('cms', 'Pass Exam'),
        ];
    }
}
