<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property integer $type
 * @property integer $status
 * @property integer $deleted
 * @property string $created_time
 * @property string $updated_time
 * @property string $deactive_time
 * @property string $active_time
 * @property string $auth_key
 * @property string $access_token
 */
class UserDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password'], 'required'],
            [['type', 'status', 'deleted'], 'integer'],
            [['created_time', 'updated_time', 'deactive_time', 'active_time'], 'safe'],
            [['username'], 'string', 'max' => 60],
            [['password', 'auth_key', 'access_token'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'username' => Yii::t('cms', 'Username'),
            'password' => Yii::t('cms', 'Password'),
            'type' => Yii::t('cms', 'Type'),
            'status' => Yii::t('cms', 'Status'),
            'deleted' => Yii::t('cms', 'Deleted'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
            'deactive_time' => Yii::t('cms', 'Deactive Time'),
            'active_time' => Yii::t('cms', 'Active Time'),
            'auth_key' => Yii::t('cms', 'Auth Key'),
            'access_token' => Yii::t('cms', 'Access Token'),
        ];
    }
}
