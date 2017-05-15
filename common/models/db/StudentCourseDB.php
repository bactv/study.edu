<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "student_course".
 *
 * @property integer $course_id
 * @property integer $student_id
 * @property double $progress
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
            [['course_id', 'student_id'], 'integer'],
            [['progress'], 'number'],
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
            'progress' => Yii::t('cms', 'Progress'),
            'signed_date' => Yii::t('cms', 'Signed Date'),
        ];
    }
}
