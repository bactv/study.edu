<?php

namespace backend\models;

use common\behaviors\TimestampBehavior;
use Yii;
use yii\behaviors\BlameableBehavior;


class ImportFile extends \common\models\ImportFileBase
{
    public $file;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['status', 'created_by', 'updated_by'], 'integer'],
            [['created_time', 'updated_time'], 'safe'],
            [['file_name', 'type'], 'string', 'max' => 255],
            [['file'], 'required'],
            [['file'], 'file', 'extensions' => 'xlsx']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'file_name' => Yii::t('cms', 'Tên Import'),
            'status' => Yii::t('cms', 'Status'),
            'type' => Yii::t('cms', 'Type'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
            'created_by' => Yii::t('cms', 'Created By'),
            'updated_by' => Yii::t('cms', 'Updated By'),
        ];
    }

    /**
     * @return array
     */
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('created_time', 'updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('updated_time')
                ),
            ),

            array(
                'class' => BlameableBehavior::class,
                'createdByAttribute' => 'created_by',
                'updatedByAttribute' => 'updated_by'
            )
        );
    }

    /**
     * @param $id
     * @return bool
     */
    public function uploadFile($id)
    {
        $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['file_import']['path'];
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        if ($this->validate()) {
            return $this->file->saveAs($path . $id . '.xlsx');
        }
        return false;
    }
}