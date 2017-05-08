<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "student_quiz".
 *
 * @property integer $id
 * @property integer $quiz_id
 * @property integer $student_id
 * @property integer $mark
 * @property string $test_date
 */
class StudentQuizDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'student_quiz';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['quiz_id', 'student_id'], 'required'],
            [['quiz_id', 'student_id', 'mark'], 'integer'],
            [['test_date'], 'safe']
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
            'student_id' => Yii::t('cms', 'Student ID'),
            'mark' => Yii::t('cms', 'Mark'),
            'test_date' => Yii::t('cms', 'Test Date'),
        ];
    }
}
