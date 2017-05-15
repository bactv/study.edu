<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "student_lesson".
 *
 * @property integer $student_id
 * @property integer $lesson_id
 * @property integer $status
 */
class StudentLessonDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'student_lesson';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['student_id', 'lesson_id'], 'required'],
            [['student_id', 'lesson_id', 'status'], 'integer']
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
            'status' => Yii::t('cms', 'Status'),
        ];
    }
}
