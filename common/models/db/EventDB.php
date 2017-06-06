<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "event".
 *
 * @property integer $id
 * @property string $name
 * @property integer $event_group
 * @property string $description
 * @property integer $point
 * @property integer $money
 * @property integer $status
 * @property string $from_date
 * @property string $to_date
 * @property string $created_time
 * @property string $updated_time
 */
class EventDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'event';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'event_group', 'description', 'from_date', 'to_date'], 'required'],
            [['event_group', 'point', 'money', 'status'], 'integer'],
            [['from_date', 'to_date', 'created_time', 'updated_time'], 'safe'],
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
            'event_group' => Yii::t('cms', 'Event Group'),
            'description' => Yii::t('cms', 'Description'),
            'point' => Yii::t('cms', 'Point'),
            'money' => Yii::t('cms', 'Money'),
            'status' => Yii::t('cms', 'Status'),
            'from_date' => Yii::t('cms', 'From Date'),
            'to_date' => Yii::t('cms', 'To Date'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
