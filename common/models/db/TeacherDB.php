<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "teacher".
 *
 * @property integer $user_id
 * @property string $full_name
 * @property string $email
 * @property integer $gender
 * @property string $intro
 * @property string $work_place
 * @property string $phone
 * @property string $degree
 * @property string $created_time
 * @property string $updated_time
 */
class TeacherDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'teacher';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'full_name'], 'required'],
            [['user_id', 'gender'], 'integer'],
            [['intro'], 'string'],
            [['created_time', 'updated_time'], 'safe'],
            [['full_name', 'email'], 'string', 'max' => 60],
            [['work_place'], 'string', 'max' => 255],
            [['phone', 'degree'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => Yii::t('cms', 'User ID'),
            'full_name' => Yii::t('cms', 'Full Name'),
            'email' => Yii::t('cms', 'Email'),
            'gender' => Yii::t('cms', 'Gender'),
            'intro' => Yii::t('cms', 'Intro'),
            'work_place' => Yii::t('cms', 'Work Place'),
            'phone' => Yii::t('cms', 'Phone'),
            'degree' => Yii::t('cms', 'Degree'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
