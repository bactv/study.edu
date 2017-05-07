<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:48 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\Question;
use frontend\models\Quiz;
use frontend\models\Subject;
use Yii;
use yii\data\Pagination;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class QuizController extends Controller
{
    /**
     * Trắc nghiệm tổng hợp
     * @param string $subject
     * @return string
     */
    public function actionIndex($subject = '')
    {
        $uri_str = $_SERVER['REQUEST_URI'];
        $uri_str = trim(str_replace('.io', '', $uri_str));
        $ex = explode('/', $uri_str);

        $uri = 'trac-nghiem';
        $quiz_type_id = 3;
        if ($uri == 'thi-thu-thpt') {
            $quiz_type_id = 1;
        } else if ($uri == 'kiem-tra-nang-luc') {
            $quiz_type_id = 2;
        }
        if (!empty(trim($ex[1]))) {
            $uri = trim($ex[1]);
        }
        $subjects = Subject::find()->asArray()->all();
        $sj_id = '';


        $query = Quiz::find()->where(['status' => 1, 'quiz_type_id' => $quiz_type_id]);
        if (!empty($subject)) {
            $sj = Subject::findOne(['name_n' => $subject]);
            if (!empty($sj)) {
                $sj_id = $sj['id'];
                $query->andWhere(['subject_id' => $sj['id']]);
            }
        }
        $query->orderBy('updated_time DESC');
        $pages = new Pagination(['totalCount' => $query->count()]);
        $pages->defaultPageSize = 10;
        $arr_quiz = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
        return $this->render('index', [
            'arr_subjects' => $subjects,
            'arr_quiz' => $arr_quiz,
            'pages' => $pages,
            'sj_id' => $sj_id,
            'uri' => $uri
        ]);
    }

    public function actionDetail($str)
    {
        $quiz_id = $this->check_url($str);
        if ($quiz_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $quiz = Quiz::findOne(['id' => $quiz_id]);
        return $this->render('detail', [
            'quiz' => $quiz
        ]);
    }

    public function actionDoContest($str)
    {
        $quiz_id = $this->check_url($str);
        if ($quiz_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $quiz = Quiz::findOne(['id' => $quiz_id]);
        $questions = Question::findAll(['quiz_id' => $quiz_id, 'status' => 1]);
        return $this->render('do_contest', [
            'quiz' => $quiz,
            'questions' => $questions
        ]);
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