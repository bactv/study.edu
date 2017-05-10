<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "course_teacher".
 *
 * @property integer $course_id
 * @property integer $teacher_id
 * @property string $course_name
 * @property string $teacher_name
 */
class CourseTeacherDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'course_teacher';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['course_id', 'teacher_id', 'course_name', 'teacher_name'], 'required'],
            [['course_id', 'teacher_id'], 'integer'],
            [['course_name', 'teacher_name'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'course_id' => Yii::t('cms', 'Course ID'),
            'teacher_id' => Yii::t('cms', 'Teacher ID'),
            'course_name' => Yii::t('cms', 'Course Name'),
            'teacher_name' => Yii::t('cms', 'Teacher Name'),
        ];
    }
}
