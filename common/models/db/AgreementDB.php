<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "agreement".
 *
 * @property integer $agreement_id
 * @property string $agreement_code
 * @property integer $party_id_a
 * @property integer $party_id_b
 * @property string $agreement_signed_date
 * @property string $agreement_effective_date
 * @property integer $agreement_type_id
 * @property double $mg
 * @property string $created_time
 * @property string $updated_time
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $deleted
 */
class AgreementDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'agreement';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['agreement_code', 'party_id_a', 'party_id_b', 'agreement_signed_date', 'agreement_effective_date', 'agreement_type_id'], 'required'],
            [['party_id_a', 'party_id_b', 'agreement_type_id', 'created_by', 'updated_by', 'deleted'], 'integer'],
            [['agreement_signed_date', 'agreement_effective_date', 'created_time', 'updated_time'], 'safe'],
            [['mg'], 'number'],
            [['agreement_code'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'agreement_id' => Yii::t('cms', 'Agreement ID'),
            'agreement_code' => Yii::t('cms', 'Agreement Code'),
            'party_id_a' => Yii::t('cms', 'Party Id A'),
            'party_id_b' => Yii::t('cms', 'Party Id B'),
            'agreement_signed_date' => Yii::t('cms', 'Agreement Signed Date'),
            'agreement_effective_date' => Yii::t('cms', 'Agreement Effective Date'),
            'agreement_type_id' => Yii::t('cms', 'Agreement Type ID'),
            'mg' => Yii::t('cms', 'Mg'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
            'created_by' => Yii::t('cms', 'Created By'),
            'updated_by' => Yii::t('cms', 'Updated By'),
            'deleted' => Yii::t('cms', 'Deleted'),
        ];
    }
}
