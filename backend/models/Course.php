<?php

namespace backend\models;

use common\components\Utility;
use Yii;


class Course extends \common\models\CourseBase
{
    public $outline_document;

    public function attributeLabels()
    {
        return array_merge(parent::attributeLabels(), [
            'outline_document' => 'Đề cương bài giảng'
        ]);
    }

    public function rules()
    {
        return [
            [['name', 'description', 'course_type_id', 'subject_id', 'teacher_ids'], 'required'],
            [['party_id', 'status', 'deleted', 'approved', 'approver', 'course_type_id', 'subject_id'], 'integer'],
            [['description'], 'string'],
            [['deadline_register', 'created_time', 'updated_time'], 'safe'],
            [['price'], 'number'],
            [['name'], 'string', 'max' => 255],
            [['outline_document'], 'file', 'extensions' => 'xlsx'],
            [['outline_document'], 'required', 'on' => 'create']
        ];
    }

    public function getStatus()
    {
        if ($this->status == 1) {
            return 'Đang active';
        }
        return 'Chưa active';
    }

    public function getApprovedStatus()
    {
        if ($this->approved == 1) {
            return 'Đã phê duyệt';
        } else if ($this->approved == 0) {
            return 'Đang chờ phê duyệt';
        }
        return 'Đã từ chối phê duyệt';
    }

    public function getTimeFormat($attribute, $orgin_symbol = '-', $new_symbol = '/', $time = true)
    {
        if (isset($this->{$attribute})) {
            return Utility::formatDataTime($this->{$attribute}, $orgin_symbol, $new_symbol, $time);
        }
        return '';
    }

    /**
     * Upload file
     * @param $attribute
     * @param $course_id
     * @param $type
     * @return bool
     */
    public function upload_file($attribute, $course_id, $type)
    {
        if ($this->{$attribute} == null) {
            return true;
        }
        $path =  Yii::$app->params['asset_course']['folder'] . '/' . $course_id . '/';
        $path_admin = Yii::getAlias('@webroot') . '/storage/' . $path;
        if (!is_dir($path_admin)) {
            mkdir($path_admin, 0777, true);
        }

        if (true) {
            $file_name = $type . '.' . $this->{$attribute}->extension;
            $this->{$attribute}->saveAs($path_admin . $file_name);
            $c = Utility::uploadFile($path, $path . $file_name, Yii::$app->params['cms_url'] . 'storage/' . $path . $file_name);
            return $c;
        } else {
            return false;
        }
    }
}