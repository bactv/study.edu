<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "transaction_error".
 *
 * @property integer $request_id
 * @property integer $user_id
 * @property string $action
 * @property integer $code
 * @property string $created_time
 */
class TransactionErrorDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'transaction_error';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id'], 'required'],
            [['user_id', 'code'], 'integer'],
            [['created_time'], 'safe'],
            [['action'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'request_id' => Yii::t('cms', 'Request ID'),
            'user_id' => Yii::t('cms', 'User ID'),
            'action' => Yii::t('cms', 'Action'),
            'code' => Yii::t('cms', 'Code'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
