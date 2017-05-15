<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "student_lesson_quiz".
 *
 * @property integer $student_id
 * @property integer $lesson_id
 * @property integer $quiz_id
 * @property integer $grade
 * @property integer $pass
 * @property string $created_time
 * @property string $updated_time
 */
class StudentLessonQuizDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'student_lesson_quiz';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['student_id', 'lesson_id', 'quiz_id'], 'required'],
            [['student_id', 'lesson_id', 'quiz_id', 'grade', 'pass'], 'integer'],
            [['created_time', 'updated_time'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'student_id' => Yii::t('cms', 'Student ID'),
            'lesson_id' => Yii::t('cms', 'Lesson ID'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'grade' => Yii::t('cms', 'Grade'),
            'pass' => Yii::t('cms', 'Pass'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
