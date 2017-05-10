<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "quiz".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property integer $quiz_type_id
 * @property integer $subject_id
 * @property integer $topic_id
 * @property integer $time_length
 * @property string $level
 * @property integer $total_question
 * @property integer $status
 * @property integer $privacy
 * @property integer $deleted
 * @property string $created_time
 * @property string $updated_time
 */
class QuizDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'quiz';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'subject_id', 'topic_id'], 'required'],
            [['quiz_type_id', 'subject_id', 'topic_id', 'time_length', 'total_question', 'status', 'privacy', 'deleted'], 'integer'],
            [['level'], 'string'],
            [['created_time', 'updated_time'], 'safe'],
            [['name', 'description'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Name'),
            'description' => Yii::t('cms', 'Description'),
            'quiz_type_id' => Yii::t('cms', 'Quiz Type ID'),
            'subject_id' => Yii::t('cms', 'Subject ID'),
            'topic_id' => Yii::t('cms', 'Topic ID'),
            'time_length' => Yii::t('cms', 'Time Length'),
            'level' => Yii::t('cms', 'Level'),
            'total_question' => Yii::t('cms', 'Total Question'),
            'status' => Yii::t('cms', 'Status'),
            'privacy' => Yii::t('cms', 'Privacy'),
            'deleted' => Yii::t('cms', 'Deleted'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
