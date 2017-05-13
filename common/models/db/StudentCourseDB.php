<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "student_course".
 *
 * @property integer $course_id
 * @property integer $student_id
 * @property integer $progess
 * @property string $signed_date
 */
class StudentCourseDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'student_course';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['course_id', 'student_id'], 'required'],
            [['course_id', 'student_id', 'progess'], 'integer'],
            [['signed_date'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'course_id' => Yii::t('cms', 'Course ID'),
            'student_id' => Yii::t('cms', 'Student ID'),
            'progess' => Yii::t('cms', 'Progess'),
            'signed_date' => Yii::t('cms', 'Signed Date'),
        ];
    }
}
