<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:50 CH
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\components\BaseController;
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

class CourseController extends BaseController
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
            echo json_encode(['status' => 0, 'message' => 'Bạn không có quyền', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();

        // check khóa học tồn tại
        $course_id = isset($request['course_id']) ? $request['course_id'] : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : 0;
        $course = Course::get_course_active($course_id);
        if (empty($course)) {
            echo json_encode(['status' => 0, 'message' => 'Khóa học không tồn tại', 'code' => 'Thông báo']);
            Yii::$app->end();
        }

        // check user đăng nhập
        $student = Student::findOne(['user_id' => $user_id]);
        $user = User::findOne(['id' => $user_id]);
        if (empty($user_id)) {
            echo json_encode(['status' => 0, 'message' => 'Bạn phải đăng nhập để đăng ký khóa học', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        if ($user->type != 1) {
            echo json_encode(['status' => 0, 'message' => 'Tài khoản của bạn không có quyền truy cập', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        // check số dư tài khoản
        if ($student->balance < $course['price']) {
            echo json_encode(['status' => 0, 'message' => "Tài khoản của bạn không đủ để thanh toán. Vui lòng  <a href='" . Url::toRoute(['/nap-tien']) . "' target='_blank'> nạp tiền</a> vào tài khoản.", 'code' => 'Thông báo']);
            Yii::$app->end();
        }

        // kiêm tra hạn đang ký
        if (date('Y-m-d') > date('Y-m-d', strtotime($course->deadline_register))) {
            echo json_encode(['status' => 0, 'message' => "Xin lỗi khóa học đã hết hạn đăng ký. Vui lòng chọn khóa học khác hoặc liên hệ với trung tâm để giải quyết."]);
            Yii::$app->end();
        }

        // kiểm tra giới hạn của khóa học
        $total_register = count(StudentCourse::findAll(['course_id' => $course->id]));
        if ($total_register >= intval($course->limit)) {
            echo json_encode(['status' => 0, 'message' => "Xin lỗi, khóa học đã hết chỗ. Vui lòng chọn khóa học khác hoặc liên hệ với trung tâm để giải quyết."]);
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
                echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra trong quá trình đăng ký, vui lòng thử lại sau.', 'code' => 'Thông báo']);
                Yii::$app->end();
            }
        }
    }

    public function actionTryRegister()
    {
        if (!Yii::$app->request->isAjax || !Yii::$app->request->isPost) {
            echo json_encode(['status' => 0, 'message' => 'Bạn không có quyền', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();

        // check khóa học tồn tại
        $course_id = isset($request['course_id']) ? $request['course_id'] : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : 0;
        $course = Course::get_course_active($course_id);
        if (empty($course)) {
            echo json_encode(['status' => 0, 'message' => 'Khóa học không tồn tại', 'code' => 'Thông báo']);
            Yii::$app->end();
        }

        // check user đăng nhập
        $student = Student::findOne(['user_id' => $user_id]);
        $user = User::findOne(['id' => $user_id]);
        if (empty($user_id)) {
            echo json_encode(['status' => 0, 'message' => 'Bạn phải đăng nhập để đăng ký khóa học', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        if ($user->type != 1) {
            echo json_encode(['status' => 0, 'message' => 'Tài khoản của bạn không có quyền truy cập', 'code' => 'Thông báo']);
            Yii::$app->end();
        }

        $free_try_course = FreeStudentCourse::findOne(['student_id' => $user->id, 'course_id' => $course_id]);
        if (!empty($free_try_course)) {
            echo json_encode(['status' => 0, 'message' => 'Bạn đã đăng ký học thử khóa học này, số buổi còn lại: ' . (Yii::$app->params['number_try_lesson'] - $free_try_course->number_lesson_learning) . ' buổi', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        $free_try_course = new FreeStudentCourse();
        $free_try_course->student_id = $user_id;
        $free_try_course->course_id = $course_id;
        $free_try_course->number_lesson_learning = 0;
        if ($free_try_course->save()) {
            echo json_encode(['status' => 1, 'message' => 'Bạn đã đăng ký học thử khóa học thành công, bạn có ' . Yii::$app->params['number_try_lesson'] . ' buổi học miễn phí. Xin cảm ơn.', 'code' => 'Thông báo']);
            Yii::$app->end();
        } else {
            echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra. Vui lòng thử lại sau', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
    }


    public static function actionCheckUserCourse()
    {
        if (!Yii::$app->request->isAjax || !Yii::$app->request->isPost) {
            echo json_encode(['status' => 0, 'message' => 'Bạn không có quyền', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();

        // check khóa học tồn tại
        $course_id = isset($request['course_id']) ? $request['course_id'] : '';
        $user_id = isset($request['user_id']) ? $request['user_id'] : 0;
        $lesson_id = isset($request['lesson_id']) ? $request['lesson_id'] : '';
        $lesson = Lesson::findOne(['id' => $lesson_id, 'status' => 1, 'deleted' => 0]);
        $course = Course::get_course_active($course_id);
        if (empty($course) || empty($lesson)) {
            echo json_encode(['status' => 0, 'message' => 'Khóa học không tồn tại', 'code' => 'Thông báo']);
            Yii::$app->end();
        }

        // check user đăng nhập
        $user = User::findOne(['id' => $user_id]);
        if (empty($user)) {
            echo json_encode(['status' => 0, 'message' => 'Bạn phải đăng nhập để tham gia khóa học', 'code' => 'Thông báo']);
            Yii::$app->end();
        }
        if ($user->type != 1) {
            echo json_encode(['status' => 0, 'message' => 'Tài khoản của bạn không có quyền để xem khóa học', 'code' => 'Thông báo']);
            Yii::$app->end();
        }


        // kiểm tra học sinh đã đăng ký khóa học hay chưa
        $student_course = StudentCourse::findOne(['student_id' => $user_id, 'course_id' => $course_id]);
        if (!empty($student_course)) {
            echo json_encode(['status' => 1, 'message' => 'OK', 'code' => 'Success']);
            Yii::$app->end();
        } else {
            // kiểm tra bài giang đã xuất bản hay chua
            if (empty($lesson->link_video) && empty($lesson->video_name)) {
                echo json_encode(['status' => 0, 'message' => 'Xin lỗi, bài giảng chưa được xuất bản', 'code' => 'Thông báo']);
                Yii::$app->end();
            }

            // kiêm tra còn số buổi học thử còn không
            $check = FreeStudentCourse::check_user_try_lesson($user_id, $course_id);
            if ($check['status'] == 0) {
                echo json_encode(['status' => 0, 'message' => 'Bạn đã hết số lần học thử, hãy đăng ký khóa học để tiếp tục', 'code' => 'Thông báo']);
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
                'lessons' => $lessons,
                'teacher' => $user
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
}