<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "course_type".
 *
 * @property integer $id
 * @property string $name
 * @property string $code
 * @property string $description
 */
class CourseTypeDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'course_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'code'], 'required'],
            [['name', 'code', 'description'], 'string', 'max' => 255]
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
            'code' => Yii::t('cms', 'Code'),
            'description' => Yii::t('cms', 'Description'),
        ];
    }
}
