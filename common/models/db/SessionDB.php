<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "session".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $user_ip
 * @property string $device
 * @property string $created_time
 */
class SessionDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'session';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id'], 'integer'],
            [['created_time'], 'safe'],
            [['user_ip', 'device'], 'string', 'max' => 255]
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
            'device' => Yii::t('cms', 'Device'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
