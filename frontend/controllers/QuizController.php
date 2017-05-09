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
use frontend\models\QuizRating;
use frontend\models\QuizReport;
use frontend\models\StudentQuiz;
use frontend\models\Subject;
use Yii;
use yii\bootstrap\Html;
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

        $uri = 'trac-nghiem-theo-chuyen-de';
        $quiz_type_id = 2;

        if (!empty(trim($ex[1]))) {
            $uri = trim($ex[1]);
        }
        if ($uri == 'thi-thu-thpt') {
            $quiz_type_id = 1;
        } else if ($uri == 'trac-nghiem-tong-hop') {
            $quiz_type_id = 3;
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
            $arr_results['results'][$dt['question_id']] = [
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
        $url_redirect = Url::toRoute(['/review/' . Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $attempt->id)]);
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
        $attempt_id = $this->check_url($str);
        if ($attempt_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $attempt = QuizAttempt::findOne(['id' => $attempt_id]);
        $quiz = Quiz::findOne(['id' => $attempt['quiz_id']]);
        $questions = Question::findAll(['quiz_id' => $attempt['quiz_id']]);
        if (empty($attempt) || empty($quiz) || empty($questions)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $other_quiz = Quiz::find()->where(['topic_id' => $quiz['topic_id'], 'status' => 1])->andWhere('id <> ' . $quiz['id'])->limit(5);
        if ($other_quiz->count() < 5) {
            $other_quiz->orWhere(['subject_id' => $quiz['subject_id']]);
            if ($other_quiz->count() < 5) {
                $other_quiz->orWhere(['quiz_type_id' => $quiz['quiz_type_id']]);
            }
        }
        $other_quiz = $other_quiz->orderBy('updated_time DESC')->all();
        $quiz_rating = QuizRating::get_quiz_rating_info($quiz['id']);

        return $this->render('review_contest', [
            'attempt' => $attempt,
            'quiz' => $quiz,
            'questions' => $questions,
            'other_quiz' => $other_quiz,
            'quiz_rating' => $quiz_rating
        ]);
    }


    public function actionRatingQuiz()
    {
        if (!Yii::$app->request->isAjax || !Yii::$app->request->isPost) {
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();
        $quiz_id = isset($request['quiz_id']) ? $request['quiz_id'] : '';
        $student_id = isset($request['student_id']) ? $request['student_id'] : '';
        $rate_value = isset($request['rate_value']) ? $request['rate_value'] : '';

        $model = QuizRating::findOne(['user_id' => $student_id, 'quiz_id' => $quiz_id]);
        if (empty($model)) {
            $model = new QuizRating();
        } else {
            echo json_encode(['status' => 0, 'message' => 'Bạn đã đánh giá bài thi ày rồi. Xin cảm ơn']);
            Yii::$app->end();
        }
        $model->quiz_id = $quiz_id;
        $model->user_id = $student_id;
        $model->rate = $rate_value;
        $model->created_time = date('Y-m-d');

        if ($model->save()) {
            echo json_encode(['status' => 1, 'info' => 'Success', 'message' => 'Cảm ơn bạn đã dành thời gian.']);
        } else {
            echo json_encode(['status' => 0, 'info' => 'Error!', 'message' => 'Có lỗi xả ra, vui lòng tử lại sau.']);
        }
        Yii::$app->end();
    }

    public function actionReportQuestion()
    {
        if (!Yii::$app->request->isPost || !Yii::$app->request->isAjax) {
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();
        $quiz_id = isset($request['quiz_id']) ? $request['quiz_id'] : '';
        $question_id = isset($request['question_id']) ? $request['question_id'] : '';
        $content = isset($request['content']) ? Html::encode($request['content']) : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : 0;
        if ($user_id == 0 || $content == '' || $question_id == '' || $quiz_id == '') {
            echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra. Vui lòng thử lại sau.']);
            Yii::$app->end();
        }
        $obj = new QuizReport();
        $obj->quiz_id = $quiz_id;
        $obj->question_id = $question_id;
        $obj->content_report = $content;
        $obj->user_id = $user_id;
        $obj->status = 0;
        $obj->created_time = date('Y-m-d H:i:s');
        if ($obj->save()) {
            echo json_encode(['status' => 1, 'message' => 'Cảm ơn bạn đã phản hồi về câu hỏi này. Chúng tôi sẽ tiếp nhận và xử lý một cách nhanh nhất. Xin cảm ơn.']);
            Yii::$app->end();
        } else {
            echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra. Vui lòng thử lại sau.']);
            Yii::$app->end();
        }
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