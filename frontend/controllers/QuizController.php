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
use frontend\models\QuestionAnswer;
use frontend\models\Quiz;
use frontend\models\QuizAttempt;
use frontend\models\StudentQuiz;
use frontend\models\Subject;
use Yii;
use yii\data\Pagination;
use yii\helpers\Url;
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

        if (!empty(trim($ex[1]))) {
            $uri = trim($ex[1]);
        }
        if ($uri == 'thi-thu-thpt') {
            $quiz_type_id = 1;
        } else if ($uri == 'kiem-tra-nang-luc') {
            $quiz_type_id = 2;
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

    /**
     * Chi tiết đề thi
     * @param $str
     * @return string
     * @throws NotFoundHttpException
     */
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

    /**
     * Kiểm tra trạng thái riêng tư của đề thi
     */
    public function actionCheckQuizPermission()
    {
        $request = Yii::$app->request->get();
        $quiz_id = isset($request['quiz_id']) ? $request['quiz_id'] : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : '';

        $quiz = Quiz::get_quiz_by_id($quiz_id);
        if (empty($quiz)) {
            echo json_encode(['status' => 0, 'message' => 'Bài kiểm tra không tồn tại']);
            Yii::$app->end();
        }
        if ($quiz['privacy'] != 0) {
            // check user đăng nhập hay chưa
            if ($user_id == 0) {
                echo json_encode(['status' => 0, 'message' => 'Bạn phải <a href="' .Url::toRoute(['/dang-nhap']) . '" target="_blank"><i>đăng nhập</i></a> để làm bài thi này.']);
                Yii::$app->end();
            }
        }
        echo json_encode(['status' => 1, 'message' => 'OK']);
        Yii::$app->end();
    }

    /**
     * Làm bài thi
     * @param $str
     * @return string
     * @throws NotFoundHttpException
     */
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

    public function actionCheckContest()
    {
        if (!Yii::$app->request->isAjax|| !Yii::$app->request->isPost) {
            Yii::$app->end();
        }

        $request = Yii::$app->request->post();
        $datas = isset($request['data']) ? $request['data'] : [];
        $time_start = isset($request['time_start']) ? $request['time_start'] : '';
        $quiz_id = isset($request['quiz_id']) ? $request['quiz_id'] : '';
        $student_id = isset($request['student_id']) ? $request['student_id'] : 0;
        $user_ip = isset($request['user_ip']) ? $request['user_ip'] : '';
        $action = isset($request['action']) ? $request['action'] : 'submit';
        $time_submit = time();
        $quiz = Quiz::findOne(['id' => $quiz_id]);

        $id = Utility::encrypt_decrypt('encrypt', 2);
        var_dump($id);
        $url_redirect = Url::toRoute(['/review/' . Utility::rewrite($quiz['name'] . '-cn' . $id)]);
        var_dump($url_redirect);die();
        return json_encode(['url_redirect' => $url_redirect, 'action' => 'submit']);


        $arr_results = [
            'info' => [
                'time_start' => date('Y-m-d H:i:s', $time_start),
                'time_submit' => date('Y-m-d H:i:s', $time_submit),
                'total_true' => 0
            ],
            'results' => [],
        ];
        foreach ($datas as $dt) {
            $check = QuestionAnswer::check_answer($dt['question_id'], $dt['ans_id']);
            $arr_results['results'][] = [
                'question_id' => $dt['question_id'],
                'ans_id' => $dt['ans_id'],
                'check' => ($check == true) ? 1 : 0
            ];
            if ($check == true) {
                $arr_results['info']['total_true'] += 1;
            }
        }
        $attempt = new QuizAttempt();
        $attempt->quiz_id = $quiz_id;
        $attempt->user_id = $student_id;
        $attempt->user_ip = $user_ip;
        $attempt->data = json_encode($arr_results);
        if ($action == 'submit') {  // submit
            $attempt->time_remain = 0;
            $attempt->status = 1;
        } else {    // save
            $attempt->time_remain = (intval($quiz['time_length'])) - (intval($time_submit) - intval($time_start));
            $attempt->status = 0;
        }
        $attempt->created_time = date('Y-m-d H:i:s');
        $attempt->save(false);

        if ($student_id != 0 && $action = 'submit') {
            $student_quiz = StudentQuiz::findOne(['quiz_id' => $quiz_id, 'student_id' => $student_id]);
            if (empty($student_quiz)) {
                $student_quiz = new StudentQuiz();
                $student_quiz->quiz_id = $quiz_id;
                $student_quiz->student_id = $student_id;
                $student_quiz->mark = number_format($arr_results['info']['total_true'] / $quiz['total_question'], 2);
                $student_quiz->test_date = date('Y-m-d');
                $student_quiz->save(false);
            }
        }
        if ($action != 'submit') {
            $url_redirect = Url::toRoute(['/trac-nghiem']);
            return json_encode(['url_redirect' => $url_redirect, 'action' => 'save']);
        }
        $url_redirect = Url::toRoute(['/review/' . Utility::rewrite($quiz['name'] . '-cn' . Utility::encrypt_decrypt('encrypt', $attempt->id))]);
        return json_encode(['url_redirect' => $url_redirect, 'action' => 'submit']);
    }

    /**
     * Review bài thi
     * @param $str
     * @return string
     * @throws NotFoundHttpException
     */
    public function actionReviewContest($str)
    {
        $attempt = $this->check_url($str);
        var_dump($attempt);die();
        if ($attempt == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        return $this->render('review_contest');
    }

    /**
     * Check url
     * @param $str
     * @return string
     */
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