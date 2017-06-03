<?php

namespace backend\models;

use common\behaviors\TimestampBehavior;
use Yii;
use yii\behaviors\BlameableBehavior;


class AgreementAddendum extends \common\models\AgreementAddendumBase
{
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('addendum_created_time', 'addendum_updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('addendum_updated_time')
                )
            ),
            array(
                'class' => BlameableBehavior::class,
                'createdByAttribute' => 'addendum_created_by',
                'updatedByAttribute' => 'addendum_updated_by',
            ),
        );
    }
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'addendum_id' => Yii::t('cms', 'ID'),
            'agreement_id' => Yii::t('cms', 'Hợp đồng'),
            'addendum_number' => Yii::t('cms', 'Số phụ lục'),
            'addendum_content' => Yii::t('cms', 'Nội dung phụ lục'),
            'addendum_created_time' => Yii::t('cms', 'Created Time'),
            'addendum_updated_time' => Yii::t('cms', 'Updated Time'),
            'addendum_created_by' => Yii::t('cms', 'Created By'),
            'addendum_updated_by' => Yii::t('cms', 'Updated By'),
        ];
    }
}