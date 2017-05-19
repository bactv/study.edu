<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 19/05/2017
 * Time: 11:53 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\CourseTeacher;
use frontend\models\Teacher;
use Yii;
use yii\data\Pagination;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class TeacherController extends Controller
{
    public function actionIndex()
    {
        $query = Teacher::find();
        $pagination = new Pagination(['totalCount' => $query->count()]);
        $arr_teacher = $query->offset($pagination->offset)->limit(6)->all();
        return $this->render('index', [
            'arr_teacher' => $arr_teacher,
            'pagination' => $pagination
        ]);
    }

    public function actionDetail($slug)
    {
        $teacher_id = $this->check_url($slug);
        $teacher = Teacher::findOne(['user_id' => $teacher_id]);
        if (empty($teacher)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $arr_course = Teacher::get_list_course_by_teacher2($teacher_id);
        return $this->render('detail', [
            'teacher' => $teacher,
            'arr_course' => $arr_course
        ]);
    }

    private function check_url($str)
    {
        $id = '';
        if (preg_match('/[0-9a-zA-Z\-]+[-cn][0-9a-zA-Z\-]+/', $str)) {
            $ex = explode('cn', $str);
            if (isset($ex[1])) {
                $id = Utility::encrypt_decrypt('decrypt', trim($ex[1]));
                if (!is_numeric($id)) {
                    $id = '';
                }
            }
        }
        return $id;
    }
}