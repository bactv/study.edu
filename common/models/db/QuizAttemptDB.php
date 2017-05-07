<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "quiz_attempt".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $user_ip
 * @property integer $quiz_id
 * @property string $data
 * @property integer $time_remain
 * @property integer $status
 * @property string $created_time
 */
class QuizAttemptDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'quiz_attempt';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'quiz_id', 'time_remain', 'status'], 'integer'],
            [['data'], 'required'],
            [['created_time'], 'safe'],
            [['user_ip'], 'string', 'max' => 255],
            [['data'], 'string', 'max' => 500]
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
            'user_ip' => Yii::t('cms', 'User Ip'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'data' => Yii::t('cms', 'Data'),
            'time_remain' => Yii::t('cms', 'Time Remain'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
