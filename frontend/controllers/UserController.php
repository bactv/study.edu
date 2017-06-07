<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:21 CH
 */
namespace frontend\controllers;

use backend\controllers\TeacherController;
use frontend\models\CourseTeacher;
use frontend\models\FreeStudentCourse;
use frontend\models\Notification;
use frontend\models\StaticPage;
use frontend\models\Student;
use frontend\models\StudentCourse;
use frontend\models\Teacher;
use frontend\models\Transaction;
use Yii;
use yii\bootstrap\Html;
use yii\data\Pagination;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;

class UserController extends Controller
{
    protected $_user;
    public function actions()
    {
        // nếu user chưa đăng nhập hoặc không phải là tài khỏa học sinh thì return false;
        if (empty(Yii::$app->user->identity)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tồn tại");
        }
        $this->_user = Yii::$app->user->identity;
        if ($this->_user['type'] == 1) {
            $student = Student::findById($this->_user['id']);
            Yii::$app->view->params['student'] = $student;
        }
        Yii::$app->view->params['user'] = $this->_user;
    }

    public function actionIndex()
    {
        if ($this->_user['type'] == 1) {
            $this->layout = 'student_layout';

            $model = Student::findById($this->_user['id']);
            $session = Yii::$app->session;

            $request = Yii::$app->request->post();
            if (isset($request['btn-info'])) {
                $model->full_name = !empty($request['full_name']) ? Html::encode($request['full_name']) : $model->full_name;
                $model->school = !empty($request['school']) ? Html::encode($request['school']) : $model->full_name;
                $model->phone = (!empty($request['phone']) && (is_numeric($request['phone']))) ? Html::encode($request['phone']) : $model->full_name;
                $model->birthday = $request['Student']['birthday'];

                if ($model->save()) {
                    $session->setFlash('success', 'Đã cập nhật thông tin thành công!');
                } else {
                    $session->setFlash('error', 'Có lỗi xảy ra. Vui lòng thử lại!');
                }
                return $this->refresh();
            } else if (isset($request['btn-login'])) {
                $password = isset($request['password']) ? $request['password'] : '';
                $new_password = isset($request['new_password']) ? $request['new_password'] : '';
                $re_new_password = isset($request['re_new_password']) ? $request['re_new_password'] : '';
                if ($password == '' || $new_password == '' || $re_new_password == '' || ($new_password != $re_new_password) || ($this->_user['password'] != md5($password))) {
                    $session->setFlash('error', 'Mật khâu của bạn không đúng.');
                } else {
                    $this->_user['password'] = md5($new_password);
                    if ($this->_user->save()) {
                        return $this->redirect(['/dang-xuat']);
                    } else {
                        $session->setFlash('error', 'Có lỗi xảy ra. Vui lòng thử lại!');
                    }
                }
                return $this->refresh();
            } else {
                return $this->render('student/index', [
                    'model' => $model,
                    'user' => $this->_user
                ]);
            }
        } else {
            $this->layout = 'teacher_layout';

            $model = Teacher::findById($this->_user['id']);
            $session = Yii::$app->session;

            $request = Yii::$app->request->post();
            if (isset($request['btn-info'])) {
                $model->full_name = !empty($request['full_name']) ? Html::encode($request['full_name']) : $model->full_name;
                $model->email = !empty($request['email']) ? Html::encode($request['email']) : $model->email;
                $model->phone = !empty($request['phone']) ? Html::encode($request['phone']) : $model->phone;
                $model->work_place = !empty($request['work_place']) ? Html::encode($request['work_place']) : $model->work_place;
                $model->intro = !empty($request['intro']) ? Html::encode($request['intro']) : $model->intro;

                if ($model->save()) {
                    $session->setFlash('success', 'Đã cập nhật thông tin thành công!');
                } else {
                    $session->setFlash('error', 'Có lỗi xảy ra. Vui lòng thử lại!');
                }
                return $this->refresh();
            } else if (isset($request['btn-login'])) {
                $password = isset($request['password']) ? $request['password'] : '';
                $new_password = isset($request['new_password']) ? $request['new_password'] : '';
                $re_new_password = isset($request['re_new_password']) ? $request['re_new_password'] : '';
                if ($password == '' || $new_password == '' || $re_new_password == '' || ($new_password != $re_new_password) || ($this->_user['password'] != md5($password))) {
                    $session->setFlash('error', 'Mật khâu của bạn không đúng.');
                } else {
                    $this->_user['password'] = md5($new_password);
                    if ($this->_user->save()) {
                        return $this->redirect(['/dang-xuat']);
                    } else {
                        $session->setFlash('error', 'Có lỗi xảy ra. Vui lòng thử lại!');
                    }
                }
                return $this->refresh();
            } else {
                return $this->render('teacher/index', [
                    'model' => $model,
                    'user' => $this->_user
                ]);
            }
        }
    }

    public function actionChangeAvatar()
    {
        $model = $this->_user;
        $session = Yii::$app->session;
        if ($model->load(Yii::$app->request->post())) {
            $model->avatar = UploadedFile::getInstance($model, 'avatar');

            if ($model->uploadAvatar($model['id'])) {
                $session->setFlash('success', 'Cập nhật thành công.');
            } else {
                $session->setFlash('error', 'Cập nhật không thành công.');
            }
        }
        return $this->redirect(Url::toRoute(['/tai-khoan']));
    }

    public function actionCharging()
    {
        $this->layout = 'student_layout';
        $bank_help = StaticPage::get_by_code('CHARGING_BANK_HELP');
        $phone_card_help = StaticPage::get_by_code('CHARGING_PHONE_CARD_HELP');
        return $this->render('student/charging', [
            'bank_help' => $bank_help,
            'phone_card_help' => $phone_card_help
        ]);
    }

    public function actionStudentCourse()
    {
        $this->layout = 'student_layout';
        $list_course = StudentCourse::findAll(['student_id' => $this->_user['id']]);
        $try_list_course = FreeStudentCourse::findAll(['student_id' => $this->_user['id']]);
        return $this->render('student/my_course', [
            'list_course' => $list_course,
            'try_list_course' => $try_list_course
        ]);
    }

    public function actionTeacherCourse()
    {
        $this->layout = 'teacher_layout';
        $list_course = CourseTeacher::findAll(['teacher_id' => $this->_user['id']]);
        return $this->render('teacher/my_course', [
            'list_course' => $list_course,
        ]);
    }

    public function actionHistoryTransaction()
    {
        $this->layout = 'student_layout';

        $query = Transaction::find()->where(['user_id' => $this->_user['id']]);
        $pages = new Pagination(['totalCount' => $query->count()]);
        $pages->defaultPageSize = 10;
        $trans = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();

        return $this->render('student/history_transaction', [
            'transactions' => $trans,
            'pages' => $pages,
        ]);
    }


    public function actionGetNewNotification()
    {
        $request = Yii::$app->request->get();
        $user_id = isset($request['user_id']) ? $request['user_id'] :  0;
        if ($user_id != 0) {
            $list_notification = Notification::findAll(['receiver_id' => $user_id, 'status' => 0]);
            return count($list_notification);
        }
        return 0;
    }

    public function actionGetListNotification()
    {
        $request = Yii::$app->request->get();
        $user_id = isset($request['user_id']) ? $request['user_id'] :  0;
        $list_notification = Notification::find()->where(['receiver_id' => $user_id])->limit(7)->orderBy('created_time DESC')->all();
        return $this->renderAjax('list_notification', [
            'list_notification' => $list_notification,
            'user_id' => $user_id
        ]);
    }

    public function actionListNotification()
    {
        $this->layout = 'student_layout';
        $list_notification = Notification::find()->where(['receiver_id' => $this->_user->id])->orderBy('created_time DESC')->all();
        return $this->render('student/notification', [
            'list_notification' => $list_notification
        ]);
    }

    public function actionNotificationDetail($id)
    {
        $this->layout = 'student_layout';
        $user_id = !empty(Yii::$app->user->identity)? Yii::$app->user->identity->getId() : '';
        if (empty($user_id)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy");
        }
        $notification = Notification::findOne(['id' => $id, 'receiver_id' => $user_id]);
        $notification->status = 1;
        $notification->save();
        return $this->render('notification_detail', [
            'notification' => $notification
        ]);
    }

    public function actionCreateFeedback()
    {
        $model = new Notification();
        $request = Yii::$app->request->post();
        $session = Yii::$app->session;

        if ($this->_user['type'] == 1) {
            $this->layout = 'student_layout';
            if (isset($request['btn-info'])) {
                $model->sender_id = $this->_user['id'];
                $model->receiver_id = 0;
                $model->type = 'student_feedback';
                $model->content = $request['content'];

                if ($model->save()) {
                    $session->setFlash("success", "Cảm ơn bạn đã phản hồi về hệ thống.");
                    return $this->redirect(['/tai-khoan']);
                }
            }

            return $this->render('create_feedback', [
                'model' => $model
            ]);
        } else {
            $this->layout = 'teacher_layout';
            if (isset($request['btn-info'])) {
                $model->sender_id = $this->_user['id'];
                $model->receiver_id = 0;
                $model->type = 'teacher_feedback';
                $model->content = $request['content'];

                if ($model->save()) {
                    $session->setFlash("success", "Cảm ơn bạn đã phản hồi về hệ thống.");
                    return $this->redirect(['/tai-khoan']);
                }
            }

            return $this->render('create_feedback', [
                'model' => $model
            ]);
        }
    }
}