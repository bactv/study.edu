<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "student".
 *
 * @property integer $user_id
 * @property string $full_name
 * @property string $birthday
 * @property string $school
 * @property string $phone
 * @property string $balance
 * @property string $created_time
 * @property string $updated_time
 */
class StudentDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'student';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'full_name'], 'required'],
            [['user_id'], 'integer'],
            [['balance'], 'number'],
            [['created_time', 'updated_time'], 'safe'],
            [['full_name', 'birthday', 'school'], 'string', 'max' => 60],
            [['phone'], 'string', 'max' => 30]
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
            'birthday' => Yii::t('cms', 'Birthday'),
            'school' => Yii::t('cms', 'School'),
            'phone' => Yii::t('cms', 'Phone'),
            'balance' => Yii::t('cms', 'Balance'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
