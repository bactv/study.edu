<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:21 CH
 */
namespace frontend\controllers;

use frontend\models\Student;
use Yii;
use yii\bootstrap\Html;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

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
    }

    public function actionIndex()
    {
        if ($this->_user['type'] == 1) {
            $this->layout = 'student_layout';

            $model = Student::findById($this->_user['id']);
            Yii::$app->view->params['model'] = $model;
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
            return $this->render('teacher/index');
        }
    }

    public function actionChangeAvatar()
    {
        $request = Yii::$app->request->post();
        $file = isset($request['avatar']) ? $request['avatar'] : '';
        var_dump($file);
    }

    public function actionStudentCourse()
    {
        $this->layout = 'student_layout';
        return $this->render('student/my_course');
    }

    public function actionHistoryTransaction()
    {
        $this->layout = 'student_layout';
        return $this->render('student/history_transaction');
    }

    public function actionStudentNotification()
    {
        $this->layout = 'student_layout';
        return $this->render('student/notification');
    }
}