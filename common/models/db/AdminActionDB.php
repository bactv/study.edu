<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "admin_action".
 *
 * @property integer $action_id
 * @property integer $controller_id
 * @property string $controller_name
 * @property string $action_name
 * @property string $description
 * @property string $updated_time
 */
class AdminActionDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'admin_action';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['controller_id'], 'required'],
            [['controller_id'], 'integer'],
            [['updated_time'], 'safe'],
            [['controller_name'], 'string', 'max' => 30],
            [['action_name'], 'string', 'max' => 50],
            [['description'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'action_id' => Yii::t('cms', 'Action ID'),
            'controller_id' => Yii::t('cms', 'Controller ID'),
            'controller_name' => Yii::t('cms', 'Controller Name'),
            'action_name' => Yii::t('cms', 'Action Name'),
            'description' => Yii::t('cms', 'Description'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
