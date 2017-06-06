<?php

namespace common\models;

use Yii;


class AgreementBase extends \common\models\db\AgreementDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'agreement_id' => Yii::t('cms', 'ID'),
            'agreement_code' => Yii::t('cms', 'Số HĐ'),
            'party_id_a' => Yii::t('cms', 'Bên A (Trung tâm)'),
            'party_id_b' => Yii::t('cms', 'Bên B (Đối tác)'),
            'agreement_signed_date' => Yii::t('cms', 'Agreement Signed Date'),
            'agreement_effective_date' => Yii::t('cms', 'Agreement Effective Date'),
            'agreement_right_ids' => Yii::t('cms', 'Agreement Right Ids'),
            'agreement_type_id' => Yii::t('cms', 'Loại hợp đồng'),
            'mg' => Yii::t('cms', 'Mg'),
            'agreement_created_time' => Yii::t('cms', 'Agreement Created Time'),
            'agreement_updated_time' => Yii::t('cms', 'Agreement Updated Time'),
            'agreement_created_by' => Yii::t('cms', 'Agreement Created By'),
            'agreement_updated_by' => Yii::t('cms', 'Agreement Updated By'),
            'to_date' => Yii::t('cms', 'Ngày hết hạn'),
            'deleted' => Yii::t('cms', 'Deleted'),
        ];
    }
}
