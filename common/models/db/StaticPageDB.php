<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "static_page".
 *
 * @property integer $id
 * @property string $type
 * @property string $content
 * @property string $created_time
 * @property string $updated_time
 */
class StaticPageDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'static_page';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'content'], 'required'],
            [['content'], 'string'],
            [['created_time', 'updated_time'], 'safe'],
            [['type'], 'string', 'max' => 60]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'type' => Yii::t('cms', 'Type'),
            'content' => Yii::t('cms', 'Content'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
