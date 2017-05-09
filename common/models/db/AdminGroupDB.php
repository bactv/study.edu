<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "admin_group".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $action_ids
 * @property integer $status
 * @property string $created_time
 * @property string $updated_time
 */
class AdminGroupDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'admin_group';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['status'], 'integer'],
            [['created_time', 'updated_time'], 'safe'],
            [['name', 'description', 'action_ids'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Name'),
            'description' => Yii::t('cms', 'Description'),
            'action_ids' => Yii::t('cms', 'Action Ids'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
