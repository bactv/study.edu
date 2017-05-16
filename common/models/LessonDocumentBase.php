<?php

namespace common\models;

use common\behaviors\TimestampBehavior;
use common\components\Utility;
use Yii;


class LessonDocumentBase extends \common\models\db\LessonDocumentDB
{
    public $file;
    public function rules()
    {
        return [
            [['lesson_id', 'document_name'], 'required'],
            [['lesson_id'], 'integer'],
            [['created_time'], 'safe'],
            [['document_name'], 'string', 'max' => 255],
//            [['file'], 'required'],
            [['file'], 'file', 'extensions' => 'pdf, doc, docx, xlsx', 'maxFiles' => 4, 'on' => 'create'],
            [['file'], 'file', 'extensions' => 'pdf, doc, docx, xlsx', 'maxFiles' => 1, 'on' => 'update']
        ];
    }

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time'],
                    self::EVENT_BEFORE_UPDATE => ['created_time']
                ]
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'lesson_id' => Yii::t('cms', 'Bài giảng'),
            'document_name' => Yii::t('cms', 'Tên tài liệu'),
            'created_time' => Yii::t('cms', 'Ngày tạo'),
        ];
    }

    public function upload_file($course_id, $lesson_id, $type='document')
    {
        if ($this->file == null) {
            return false;
        }

        $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['assets.course']['path'] . $course_id . '/' . $lesson_id . '/' . $type . '/';
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        foreach ($this->file as $file2) {
            $extension = $file2->extension;
            $basename = Utility::rewrite($file2->baseName);
            if (!$file2->saveAs($path . $basename . '.' . $extension)) {
                return false;
            }
        }
        return true;
    }
}
