<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "question".
 *
 * @property integer $id
 * @property string $content
 * @property integer $status
 * @property integer $subject_id
 * @property integer $topic_id
 * @property integer $quiz_id
 * @property string $solution
 */
class QuestionDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'question';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['content', 'quiz_id'], 'required'],
            [['status', 'subject_id', 'topic_id', 'quiz_id'], 'integer'],
            [['solution'], 'string'],
            [['content'], 'string', 'max' => 700]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'content' => Yii::t('cms', 'Content'),
            'status' => Yii::t('cms', 'Status'),
            'subject_id' => Yii::t('cms', 'Subject ID'),
            'topic_id' => Yii::t('cms', 'Topic ID'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'solution' => Yii::t('cms', 'Solution'),
        ];
    }
}
