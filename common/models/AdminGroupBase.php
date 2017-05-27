<?php

namespace common\models;

use Yii;


class AdminGroupBase extends \common\models\db\AdminGroupDB
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Tên nhóm'),
            'description' => Yii::t('cms', 'Mô tả'),
            'action_ids' => Yii::t('cms', 'Action Ids'),
            'status' => Yii::t('cms', 'Status'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
