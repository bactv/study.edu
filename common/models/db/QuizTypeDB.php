<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "quiz_type".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $created_time
 * @property string $updated_time
 */
class QuizTypeDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'quiz_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['created_time', 'updated_time'], 'safe'],
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
        ];
    }
}
