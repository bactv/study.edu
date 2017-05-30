<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:50 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\models\Course;
use frontend\models\CourseTeacher;
use frontend\models\FreeStudentCourse;
use frontend\models\Lesson;
use frontend\models\LessonQuiz;
use frontend\models\Student;
use frontend\models\StudentCourse;
use frontend\models\Subject;
use frontend\models\User;
use Yii;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\ForbiddenHttpException;
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
        $course = Course::get_course_by_id($course_id);
        if ($course_id == '' || empty($course)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $lessons = Lesson::findAll(['course_id' => $course['id']]);
        $lesson_quiz = LessonQuiz::findAll(['course_id' => $course['id']]);

        $other_course = Course::get_other_course(5, $course['subject_id']);
        return $this->render('video_intro', [
            'course' => $course,
            'lessons' => $lessons,
            'lesson_quiz' => $lesson_quiz,
            'other_course' => $other_course
        ]);
    }

    public function actionRegister()
    {
        if (!Yii::$app->request->isAjax || !Yii::$app->request->isPost) {
            echo json_encode(['status' => 0, 'message' => 'Bạn không có quyền', 'code' => 'Error']);
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();

        // check khóa học tồn tại
        $course_id = isset($request['course_id']) ? $request['course_id'] : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : 0;
        $course = Course::get_course_active($course_id);
        if (empty($course)) {
            echo json_encode(['status' => 0, 'message' => 'Khóa học không tồn tại', 'code' => 'Error']);
            Yii::$app->end();
        }

        // check user đăng nhập
        $student = Student::findOne(['user_id' => $user_id]);
        $user = User::findOne(['id' => $user_id]);
        if (empty($user_id)) {
            echo json_encode(['status' => 0, 'message' => 'Bạn phải đăng nhập để xem bài giảng', 'code' => 'Error']);
            Yii::$app->end();
        }
        if ($user->type != 1) {
            echo json_encode(['status' => 0, 'message' => 'Tài khoản của bạn không có quyền truy cập', 'code' => 'Error']);
            Yii::$app->end();
        }
        // check số dư tài khoản
        if ($student->balance < $course['price']) {
            echo json_encode(['status' => 0, 'message' => "Tài khoản của bạn không đủ để thanh toán. Vui lòng  <a href='" . Url::toRoute(['/nap-tien']) . "' target='_blank'> nạp tiền</a> vào tài khoản.", 'code' => 'Error']);
            Yii::$app->end();
        }

        $charge = Student::charge_money($user_id, -($course['price']));
        if (!$charge) {
            echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra khi trừ tiền. Vui lòng thử lại sau.']);
            Yii::$app->end();
        } else {
            // save vào transaction


            $obj = new StudentCourse();
            $obj->course_id = $course_id;
            $obj->student_id = $user_id;
            $obj->signed_date = date('Y-m-d H:i:s');

            if ($obj->save()) {
                // xóa bản ghi ở học thử
                $try_course = FreeStudentCourse::findOne(['course_id' => $course_id, 'student_id' => $user_id]);
                if (!empty($try_course)) {
                    $try_course->delete();
                }

                echo json_encode(['status' => 1, 'message' => 'Bạn đã đăng ký thành công khóa học. Hãy <a href="' . Url::toRoute(['/detail/' . Utility::rewrite($course['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $course['id'])]) . '">truy cập</a> khóa học ngay để trải nghiệm!', 'code' => 'Success!']);
                Yii::$app->end();
            } else {
                echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra trong quá trình đăng ký, vui lòng thử lại sau.', 'code' => 'Error']);
                Yii::$app->end();
            }
        }
    }


    public static function actionCheckUserCourse()
    {
        if (!Yii::$app->request->isAjax || !Yii::$app->request->isPost) {
            echo json_encode(['status' => 0, 'message' => 'Bạn không có quyền', 'code' => 'Error']);
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();

        // check khóa học tồn tại
        $course_id = isset($request['course_id']) ? $request['course_id'] : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : 0;
        $course = Course::get_course_active($course_id);
        if (empty($course)) {
            echo json_encode(['status' => 0, 'message' => 'Khóa học không tồn tại', 'code' => 'Error']);
            Yii::$app->end();
        }

        // check user đăng nhập
        $user = User::findOne(['id' => $user_id]);
        if (empty($user)) {
            echo json_encode(['status' => 0, 'message' => 'Bạn phải đăng nhập để tham gia khóa học', 'code' => 'Error']);
            Yii::$app->end();
        }
        if ($user->type != 1) {
            echo json_encode(['status' => 0, 'message' => 'Tài khoản của bạn không có quyền để xem khóa học', 'code' => 'Error']);
            Yii::$app->end();
        }

        // kiểm tra học sinh đã đăng ký khóa học hay chưa
        $student_course = StudentCourse::findOne(['student_id' => $user_id, 'course_id' => $course_id]);
        if (!empty($student_course)) {
            echo json_encode(['status' => 1, 'message' => 'OK', 'code' => 'Success']);
            Yii::$app->end();
        } else {
            // kiêm tra còn số buổi học thử còn không
            $check = FreeStudentCourse::check_user_try_lesson($user_id, $course_id);
            if ($check['status'] == 0) {
                echo json_encode(['status' => 0, 'message' => 'Bạn đã hết số lần học thử, hãy đăng ký khóa học để tiếp tục', 'code' => 'Error']);
                Yii::$app->end();
            }
            $obj = $check['obj'];
            if ($obj == null) {
                $obj = new FreeStudentCourse();
            }
            $obj->student_id = $user_id;
            $obj->course_id = $course_id;
            $obj->number_lesson_learning = $obj->number_lesson_learning + 1;
            $obj->save(false);
            echo json_encode(['status' => 1, 'message' => 'ok', 'code' => 'Success']);
            Yii::$app->end();
        }
    }



    // trang chi tiết khóa học
    public function actionDetail($str)
    {
        $this->layout = 'course_layout';
        $course_id = $this->check_url($str);
        $course = Course::get_course_by_id($course_id);
        if ($course_id == '' || empty($course)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }
        $user = !empty(Yii::$app->user->identity) ? Yii::$app->user->identity : null;
        if (empty($user)) {
            throw new ForbiddenHttpException("Bạn không có quyền truy cập vào trang này.");
        }
        // kiểm tra học sinh đăg ký khóa học hay chưa
        if ($user->type == 1) {
            $check = StudentCourse::findOne(['student_id' => $user->getId(), 'course_id' => $course_id]);
            if (empty($check)) {
                throw new ForbiddenHttpException("Bạn không có quyền truy cập vào trang này.");
            }
        }


        Yii::$app->params['course'] = $course;

        $lessons = Lesson::find()->where(['course_id' => $course_id])->orderBy('sort ASC, id ASC')->all();

        if ($user->type == 2 ) {
            $check = CourseTeacher::findOne(['course_id' => $course_id, 'teacher_id' => $user->getId()]);
            if (!$check) {
                throw new ForbiddenHttpException("Bạn không có quyền truy cập vào trang này.");
            }
            return $this->render('video_detail_teacher', [
                'course' => $course,
                'lessons' => $lessons
            ]);
        }

        return $this->render('video_detail', [
            'course' => $course,
            'lessons' => $lessons
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

    public function actionLiveStreaming()
    {
        $this->layout = false;
        return $this->render('live_streaming');
    }
}