<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "quiz_score".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $quiz_id
 * @property integer $score
 * @property integer $time_complete
 * @property string $created_time
 */
class QuizScoreDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'quiz_score';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'quiz_id'], 'required'],
            [['user_id', 'quiz_id', 'score', 'time_complete'], 'integer'],
            [['created_time'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'user_id' => Yii::t('cms', 'User ID'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'score' => Yii::t('cms', 'Score'),
            'time_complete' => Yii::t('cms', 'Time Complete'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
