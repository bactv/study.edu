<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "quiz_rating".
 *
 * @property integer $id
 * @property integer $quiz_id
 * @property integer $user_id
 * @property integer $rate
 * @property string $created_time
 */
class QuizRatingDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'quiz_rating';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['quiz_id', 'user_id'], 'required'],
            [['quiz_id', 'user_id', 'rate'], 'integer'],
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
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'user_id' => Yii::t('cms', 'User ID'),
            'rate' => Yii::t('cms', 'Rate'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
