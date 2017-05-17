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
use frontend\models\QuizScore;
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
        $user_ip = isset($request['user_ip']) ? $request['user_ip'] : '';

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
        // kiểm tra có phải bài làm dở hay không.
        $quiz_attempt = QuizAttempt::check_quiz_not_complete($quiz_id, $user_id, $user_ip);
        if (!empty($quiz_attempt)) {
            echo json_encode([
                'status' => 2,
                'message' => 'Bạn đã làm bài thi này nhưng chưa hoàn thiện. Bạn có muốn tiếp tục không?',
                'url' => Url::toRoute(['quiz/do-continue', 'str' => Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $quiz['id']), 'attempt_id' => $quiz_attempt['id']]),
                'attempt_id' => $quiz_attempt['id']
            ]);
            Yii::$app->end();
        }
        echo json_encode(['status' => 1, 'message' => 'OK']);
        Yii::$app->end();
    }

    public function actionDoContinue($str, $attempt_id)
    {
        $quiz_id = $this->check_url($str);
        if ($quiz_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $quiz = Quiz::findOne(['id' => $quiz_id]);
        $questions = Question::findAll(['quiz_id' => $quiz_id, 'status' => 1]);
        $attempt = QuizAttempt::findOne(['id' => $attempt_id]);
        return $this->render('continue_contest', [
            'quiz' => $quiz,
            'questions' => $questions,
            'attempt' => $attempt
        ]);
    }

    public function actionClearAttempt($attempt_id, $user_id, $user_ip)
    {
        $at = QuizAttempt::findOne(['id' => $attempt_id]);
        if (!empty($at)) {
            $data = json_decode($at->data);

            $at->status = 1;
            $at->time_remain = 0;

            $at->save(false);

            $quiz_score = QuizScore::findOne(['quiz_id' => $at->quiz_id, 'user_id' => $user_id]);
            if (empty($quiz_score)) {
                $quiz_score = new QuizScore();
                $quiz_score->quiz_id = $at->quiz_id;
                $quiz_score->user_id = $user_id;
                $quiz_score->score = $data->{'info'}->{'total_true'};
                $quiz_score->time_complete = strtotime($data->{'info'}->{'time_submit'}) - strtotime($data->{'info'}->{'time_start'});
                $quiz_score->created_time = date('Y-m-d H:i:s');
                $quiz_score->save(false);
            }
        }
        // check score
    }

    public function actionTest()
    {
        var_dump((array)json_decode('{"info":{"time_start":"2017-05-15 12:08:38","time_submit":"2017-05-15 12:08:43","total_true":0},"results":{"541":{"question_id":"541","ans_id":"2161","check":0},"542":{"question_id":"542","ans_id":"","check":0},"543":{"question_id":"543","ans_id":"2170","check":0},"544":{"question_id":"544","ans_id":"","check":0},"545":{"question_id":"545","ans_id":"","check":0},"546":{"question_id":"546","ans_id":"","check":0},"547":{"question_id":"547","ans_id":"","check":0},"548":{"question_id":"548","ans_id":"","check":0},"549":{"question_id":"549","ans_id":"","check":0},"550":{"question_id":"550","ans_id":"","check":0}}}'));
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
        $attempt_id = isset($request['attempt_id']) ? $request['attempt_id'] : '';

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
        if ($attempt_id != '') {
            $attempt = QuizAttempt::findOne(['id' => $attempt_id]);
        }
        if (empty($attempt)) {
            $attempt = new QuizAttempt();
        }
        $attempt->quiz_id = $quiz_id;
        $attempt->user_id = $student_id;
        $attempt->user_ip = $user_ip;
        $attempt->data = json_encode($arr_results);
        if ($action == 'submit') {  // submit
            $attempt->time_remain = 0;
            $attempt->status = 1;
        } else {    // save
            $attempt->time_remain = floor((intval($quiz['time_length']) * 60) - (intval($time_submit) - intval($time_start))) / 60;
            $attempt->status = 0;
        }
        $attempt->created_time = date('Y-m-d H:i:s');
        $attempt->save(false);
        if ($student_id != 0 && $action == 'submit') {
            $quiz_score = QuizScore::findOne(['quiz_id' => $quiz_id, 'user_id' => $student_id]);
            if (empty($quiz_score)) {
                $quiz_score = new QuizScore();
                $quiz_score->quiz_id = $quiz_id;
                $quiz_score->user_id = $student_id;
                $quiz_score->score = $arr_results['info']['total_true'];
                $quiz_score->time_complete = intval($time_submit) - intval($time_start);
                $quiz_score->save(false);
            }
        }

        if ($action == 'save') {
            $url_redirect = Url::toRoute(['/trac-nghiem-theo-chuyen-de']);
            return json_encode(['url_redirect' => $url_redirect, 'action' => 'save']);
        } else {
            $url_redirect = Url::toRoute(['/review/' . Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $attempt->id)]);
            return json_encode(['url_redirect' => $url_redirect, 'action' => 'submit']);
        }
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