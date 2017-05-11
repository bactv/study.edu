<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 1:07 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use Yii;
use yii\web\Controller;

class LessonController extends Controller
{
    public function actionDetail($str)
    {
        $id = $this->check_url($str);
        $type = 1;
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