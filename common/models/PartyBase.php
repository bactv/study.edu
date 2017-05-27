<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use Yii;
use yii\behaviors\BlameableBehavior;


class PartyBase extends \common\models\db\PartyDB
{
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('party_created_time', 'party_updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('party_updated_time')
                )
            ),
            array(
                'class' => BlameableBehavior::class,
                'createdByAttribute' => 'party_created_by',
                'updatedByAttribute' => 'party_updated_by',
            )
        );
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'party_id' => Yii::t('cms', 'ID'),
            'party_type_id' => Yii::t('cms', 'Party Types'),
            'party_name' => Yii::t('cms', 'Party Name'),
            'party_rep_title' => Yii::t('cms', 'Party Rep Title'),
            'party_address' => Yii::t('cms', 'Party Address'),
            'party_tax_code' => Yii::t('cms', 'Party Tax Code'),
            'party_phone' => Yii::t('cms', 'Party Phone'),
            'party_created_time' => Yii::t('cms', 'Created Time'),
            'party_updated_time' => Yii::t('cms', 'Updated Time'),
            'party_created_by' => Yii::t('cms', 'Created By'),
            'party_updated_by' => Yii::t('cms', 'Updated By'),
        ];
    }
}
