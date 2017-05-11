<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:50 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\Subject;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class CourseController extends Controller
{
    public function actionIndex($category = '')
    {
        $subject = null;
        if ($category != '') {
            $subject = Subject::findOne(['name_n' => $category]);
            if (empty($subject)) {
                throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy!");
            }
        }
        return $this->render('index', [
            'subject' => $subject
        ]);
    }

    public function actionIntro($str)
    {
        $course_id = $this->check_url($str);
        if ($course_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $type = 1; // video
        if ($type == 1) {
            return $this->render('video_intro');
        }
    }

    public function actionDetail()
    {
        return $this->render('video_detail');
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