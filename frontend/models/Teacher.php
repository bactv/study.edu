<?php

namespace frontend\models;

use Yii;


class Teacher extends \common\models\TeacherBase
{
    public static function save_data($user_id, $full_name)
    {
        $model = new Teacher();
        $model->user_id = $user_id;
        $model->full_name = $full_name;

        return $model->save();
    }

    public static function get_list_teacher_feature($limit = 8)
    {
        $sql = "SELECT
                t1.*,
                COUNT(t2.course_id) as total_course_open
                FROM teacher as t1
                LEFT JOIN course_teacher as t2 ON t2.teacher_id=t1.user_id
                GROUP BY t1.user_id
                ORDER BY total_course_open DESC
                LIMIT " . $limit;
        $data = Yii::$app->db->createCommand($sql)->queryAll();
        return $data;
    }
}