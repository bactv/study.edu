<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "admin_controller".
 *
 * @property integer $controller_id
 * @property string $controller_name
 * @property string $description
 * @property string $updated_time
 */
class AdminControllerDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'admin_controller';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['controller_name'], 'required'],
            [['updated_time'], 'safe'],
            [['controller_name'], 'string', 'max' => 30],
            [['description'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'controller_id' => Yii::t('cms', 'Controller ID'),
            'controller_name' => Yii::t('cms', 'Controller Name'),
            'description' => Yii::t('cms', 'Description'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
