<?php

namespace frontend\models;

use Yii;


class StudentLessonQuiz extends \common\models\StudentLessonQuizBase
{
    public static function get_max_grade_student($lesson_quiz_id, $student_id)
    {
        $query = "SELECT * 
                  FROM student_lesson_quiz
                  WHERE student_id='" . $student_id . "' 
                  AND quiz_id='" . $lesson_quiz_id . "' 
                  ORDER BY grade DESC
                  LIMIT 1";
        return Yii::$app->db->createCommand($query)->queryOne();
    }
}