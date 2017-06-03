<?php

namespace backend\models;

use common\behaviors\TimestampBehavior;
use Yii;
use yii\behaviors\BlameableBehavior;


class Agreement extends \common\models\AgreementBase
{
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('created_time', 'updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('updated_time')
                )
            ),
            array(
                'class' => BlameableBehavior::class,
                'createdByAttribute' => 'created_by',
                'updatedByAttribute' => 'updated_by',
            ),
        );
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
            [['agreement_code'], 'string', 'max' => 255],
            ['agreement_code', 'validateAgreementCode', 'on' => 'create']
        ];
    }

    public static function findByIdentify($condition)
    {
        return self::find()->where($condition)->one();
    }

    public static function getAttributeValue($conditions, $attr_return)
    {
        $object = self::find()->where($conditions)->one();
        if (!empty($object) && isset($object->{$attr_return})) {
            return $object->{$attr_return};
        }
        return '';
    }

    public function validateAgreementCode()
    {
        $check = Agreement::findOne(['agreement_code' => $this->agreement_code]);
        if (!empty($check)) {
            $this->addError('agreement_code', 'Số HĐ đã tồn tại');
        }
    }
}