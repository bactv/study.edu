<?php

namespace backend\models;

use common\components\Utility;
use Yii;


class Course extends \common\models\CourseBase
{
    public $logo;
    public function attributeLabels()
    {
        return array_merge(parent::attributeLabels(), [
            'logo' => 'Logo khóa học'
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
            [['logo'], 'required', 'on' => 'create'],
            [['logo'], 'file', 'extensions' => 'png, jpg, jpeg, gif']
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
    public function upload_file($attribute, $course_id, $type = 'logo')
    {
        if ($this->{$attribute} == null) {
            return true;
        }

        if ($type == 'logo') {
            $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['img.course']['path'];
        } else {
            $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['assets.course']['path'] . $course_id . '/' . $type . '/';
        }
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        if ($type == 'logo') {
            $extension = 'png';
            $basename = $course_id;
        } else {
            $extension = $this->{$attribute}->extension;
            $basename = $this->{$attribute}->baseName;
        }
        if ($this->validate()) {
            return $this->{$attribute}->saveAs($path . $basename . '.' . $extension);
        }
        return false;
    }
}