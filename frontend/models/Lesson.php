<?php

namespace frontend\models;

use common\components\Utility;
use Yii;


class Lesson extends \common\models\LessonBase
{
    public $video;
    public function rules()
    {
        return [
            [['course_id', 'name', 'description', 'publish_date'], 'required'],
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

    public static function check_user_complete_lesson($lesson_id, $student_id)
    {
        // nếu học sinh vượt qua được mọi bài kiểm tra trong bài học thì học sinh đó vượt qua được bài học đó
        $all_lesson_quiz = LessonQuiz::findAll(['lesson_id' => $lesson_id]);
        if (empty($quiz)) {
            return false;
        }
        foreach ($all_lesson_quiz as $quiz) {
            // kiêm tra từng quiz trong bảng student_lesson_quiz
            $query = StudentLessonQuiz::findOne(['student_id' => $student_id, 'lesson_id' => $lesson_id, 'quiz_id' => $quiz['id'], 'pass' => 1]);
            if (empty($query)) {
                return false;
            }
        }

        // nếu hoàn thành, cập nhật progress trong bảng student_course và student_lesson
        $student_lesson = StudentLesson::findOne(['student_id' => $student_id, 'lesson_id' => $lesson_id]);
        if (empty($student_lesson)) {
            $student_lesson = new StudentLesson();
        }
        $student_lesson->student_id = $student_id;
        $student_lesson->lesson_id = $lesson_id;
        $student_lesson->status = 1;
        $student_lesson->save(false);

        return true;
    }

    public static function get_array_lesson_ids_order($course_id)
    {
        $arr_lesson_ids = [];
        $all_lesson = Lesson::find()->where(['course_id' => $course_id])->orderBy('id ASC')->asArray()->all();
        foreach ($all_lesson as $ls) {
            $arr_lesson_ids[] = $ls['id'];
        }
        return $arr_lesson_ids;
    }
}