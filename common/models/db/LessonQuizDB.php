<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "lesson_quiz".
 *
 * @property integer $id
 * @property integer $course_id
 * @property integer $lesson_id
 * @property integer $pass_exam
 * @property integer $total_question
 * @property integer $time_length
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
            [['course_id', 'lesson_id'], 'required'],
            [['course_id', 'lesson_id', 'pass_exam', 'total_question', 'time_length'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'course_id' => Yii::t('cms', 'Course ID'),
            'lesson_id' => Yii::t('cms', 'Lesson ID'),
            'pass_exam' => Yii::t('cms', 'Pass Exam'),
            'total_question' => Yii::t('cms', 'Total Question'),
            'time_length' => Yii::t('cms', 'Time Length'),
        ];
    }
}
