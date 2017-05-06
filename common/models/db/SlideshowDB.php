<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "slideshow".
 *
 * @property integer $id
 * @property string $title
 * @property string $description
 * @property string $alt
 * @property string $url
 * @property integer $status
 * @property string $created_time
 * @property string $updated_time
 * @property integer $created_by
 * @property integer $updated_by
 */
class SlideshowDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'slideshow';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'alt'], 'required'],
            [['status', 'created_by', 'updated_by'], 'integer'],
            [['created_time', 'updated_time'], 'safe'],
            [['title', 'description', 'alt', 'url'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'title' => Yii::t('cms', 'Title'),
            'description' => Yii::t('cms', 'Description'),
            'alt' => Yii::t('cms', 'Alt'),
            'url' => Yii::t('cms', 'Url'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
            'created_by' => Yii::t('cms', 'Created By'),
            'updated_by' => Yii::t('cms', 'Updated By'),
        ];
    }
}
