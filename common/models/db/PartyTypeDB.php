<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "party_type".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $created_time
 * @property string $updated_time
 * @property integer $created_by
 * @property integer $updated_by
 */
class PartyTypeDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'party_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['created_time', 'updated_time'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['name', 'description'], 'string', 'max' => 255]
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
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
            'created_by' => Yii::t('cms', 'Created By'),
            'updated_by' => Yii::t('cms', 'Updated By'),
        ];
    }
}
