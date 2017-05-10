<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "admin".
 *
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property string $full_name
 * @property string $email
 * @property string $profession
 * @property string $birthday
 * @property integer $thumb
 * @property integer $status
 * @property integer $deleted
 * @property string $last_active_time
 * @property string $group_ids
 * @property integer $created_by
 * @property integer $updated_by
 * @property string $created_time
 * @property string $updated_time
 */
class AdminDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'admin';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password'], 'required'],
            [['birthday', 'last_active_time', 'created_time', 'updated_time'], 'safe'],
            [['thumb', 'status', 'deleted', 'created_by', 'updated_by'], 'integer'],
            [['username'], 'string', 'max' => 50],
            [['password', 'profession', 'group_ids'], 'string', 'max' => 255],
            [['full_name', 'email'], 'string', 'max' => 100]
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
            'full_name' => Yii::t('cms', 'Full Name'),
            'email' => Yii::t('cms', 'Email'),
            'profession' => Yii::t('cms', 'Profession'),
            'birthday' => Yii::t('cms', 'Birthday'),
            'thumb' => Yii::t('cms', 'Thumb'),
            'status' => Yii::t('cms', 'Status'),
            'deleted' => Yii::t('cms', 'Deleted'),
            'last_active_time' => Yii::t('cms', 'Last Active Time'),
            'group_ids' => Yii::t('cms', 'Group Ids'),
            'created_by' => Yii::t('cms', 'Created By'),
            'updated_by' => Yii::t('cms', 'Updated By'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
