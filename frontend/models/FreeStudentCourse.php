<?php

namespace frontend\models;

use Yii;
use yii\db\Query;


class FreeStudentCourse extends \common\models\FreeStudentCourseBase
{
    public static function check_user_try_lesson($user_id, $course_id)
    {
        $status = 0;
        $obj = null;
        $obj = FreeStudentCourse::findOne(['student_id' => $user_id, 'course_id' => $course_id]);
        if (empty($obj)) {
            $status = 1;
            return compact('status', 'obj');
        }
        $num = $obj->number_lesson_learning;
        if ($num < Yii::$app->params['number_try_lesson']) {
            $status = 1;
            return compact('status', 'obj');
        }
        return compact('status', 'obj');
    }
}