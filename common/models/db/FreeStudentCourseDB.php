<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "free_student_course".
 *
 * @property integer $id
 * @property integer $student_id
 * @property integer $course_id
 * @property integer $number_lesson_learning
 */
class FreeStudentCourseDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'free_student_course';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['student_id', 'course_id'], 'required'],
            [['student_id', 'course_id', 'number_lesson_learning'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'student_id' => Yii::t('cms', 'Student ID'),
            'course_id' => Yii::t('cms', 'Course ID'),
            'number_lesson_learning' => Yii::t('cms', 'Number Lesson Learning'),
        ];
    }
}
