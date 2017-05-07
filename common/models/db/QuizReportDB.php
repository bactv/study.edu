<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "quiz_report".
 *
 * @property integer $id
 * @property integer $quiz_id
 * @property integer $question_id
 * @property string $content_report
 * @property integer $user_id
 * @property integer $status
 * @property string $created_time
 */
class QuizReportDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'quiz_report';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['quiz_id', 'question_id', 'content_report', 'user_id'], 'required'],
            [['quiz_id', 'question_id', 'user_id', 'status'], 'integer'],
            [['created_time'], 'safe'],
            [['content_report'], 'string', 'max' => 255]
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
            'question_id' => Yii::t('cms', 'Question ID'),
            'content_report' => Yii::t('cms', 'Content Report'),
            'user_id' => Yii::t('cms', 'User ID'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
