<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "transaction".
 *
 * @property integer $request_id
 * @property integer $user_id
 * @property string $action
 * @property string $price
 * @property string $content
 * @property string $response
 * @property string $user_balance
 * @property string $created_time
 */
class TransactionDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'transaction';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'action'], 'required'],
            [['user_id'], 'integer'],
            [['price', 'user_balance'], 'number'],
            [['created_time'], 'safe'],
            [['action', 'content', 'response'], 'string', 'max' => 255]
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
            'price' => Yii::t('cms', 'Price'),
            'content' => Yii::t('cms', 'Content'),
            'response' => Yii::t('cms', 'Response'),
            'user_balance' => Yii::t('cms', 'User Balance'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
