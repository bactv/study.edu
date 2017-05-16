<?php

namespace backend\models;

use common\components\Utility;
use Yii;


class Lesson extends \common\models\LessonBase
{
    public $video;

    public function rules()
    {
        return [
            [['course_id', 'name', 'description'], 'required'],
            [['course_id', 'time_length', 'sort', 'number_view', 'status', 'deleted'], 'integer'],
            [['description'], 'string'],
            [['publish_date', 'created_time', 'updated_time'], 'safe'],
            [['name', 'link_video'], 'string', 'max' => 255],
            [['video'], 'file', 'extensions' => 'avi, mov, mp4, wmv, flv']
        ];
    }

    /**
     * Upload file
     * @param $attribute
     * @param $course_id
     * @param $lesson_id
     * @param $type
     * @return bool
     */
    public function upload_file($attribute, $course_id, $lesson_id, $type = 'video')
    {
        if ($this->{$attribute} == null) {
            return true;
        }

        $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['assets.course']['path'] . $course_id . '/' . $lesson_id . '/' . $type . '/';
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        $extension = $this->{$attribute}->extension;
        $basename = Utility::rewrite($this->{$attribute}->baseName);
        if ($this->validate()) {
            return $this->{$attribute}->saveAs($path . $basename . '.' . $extension);
        }
        return false;
    }
}