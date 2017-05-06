<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:48 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\Subject;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class QuizController extends Controller
{
    public function actionIndex()
    {
        $subjects = Subject::find()->asArray()->all();
        return $this->render('index', [
            'arr_subjects' => $subjects
        ]);
    }

    public function actionDetail($str)
    {
        $quiz_id = $this->check_url($str);
        if ($quiz_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        return $this->render('detail');
    }

    public function actionDoContest($str)
    {
        $quiz_id = $this->check_url($str);
        if ($quiz_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        return $this->render('do_contest');
    }

    public function actionReviewContest($str)
    {
        $attempt = $this->check_url($str);
        if ($attempt == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        return $this->render('review_contest');
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