<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "subject".
 *
 * @property integer $id
 * @property string $name
 * @property string $short_name
 * @property string $name_n
 * @property string $icon
 * @property string $icon_color
 */
class SubjectDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'subject';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'short_name', 'name_n'], 'required'],
            [['name'], 'string', 'max' => 30],
            [['short_name', 'icon', 'icon_color'], 'string', 'max' => 20],
            [['name_n'], 'string', 'max' => 40]
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
            'short_name' => Yii::t('cms', 'Short Name'),
            'name_n' => Yii::t('cms', 'Name N'),
            'icon' => Yii::t('cms', 'Icon'),
            'icon_color' => Yii::t('cms', 'Icon Color'),
        ];
    }
}
