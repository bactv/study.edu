<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "lesson_document".
 *
 * @property integer $id
 * @property integer $lesson_id
 * @property string $document_name
 * @property string $created_time
 */
class LessonDocumentDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lesson_document';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['lesson_id', 'document_name'], 'required'],
            [['lesson_id'], 'integer'],
            [['created_time'], 'safe'],
            [['document_name'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'lesson_id' => Yii::t('cms', 'Lesson ID'),
            'document_name' => Yii::t('cms', 'Document Name'),
            'created_time' => Yii::t('cms', 'Created Time'),
        ];
    }
}
