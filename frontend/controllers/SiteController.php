<?php
namespace frontend\controllers;

use frontend\models\Course;
use frontend\models\Slideshow;
use frontend\models\Teacher;
use frontend\models\User;
use Yii;
use yii\bootstrap\Html;
use yii\helpers\Url;
use yii\web\Controller;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionLogin()
    {
        $model = new User();

        $model->type = 1;
        $request = Yii::$app->request->post();
        $session = Yii::$app->session;
        if (isset($request['btn-login'])) {
            $username = isset($request['username'])? Html::encode($request['username']) : '';
            $password = isset($request['password'])? Html::encode($request['password']) : '';
            $user_type = isset($request['user_type'])? Html::encode($request['user_type']) : 1;
            $remember_me = isset($request['remember-me'])? 1 : 0;

            $model->username = $username;
            $model->password = $password;
            $model->type = $user_type;
            $model->rememberMe = $remember_me;

            if ($model->login()) {
                return $this->goHome();
            } else {
                $session->setFlash('error', 'Tên đăng nhập hoặc tài khoản không tồn tại.');
                return $this->render('login', [
                    'model' => $model
                ]);
            }

        } else {
            return $this->render('login', [
                'model' => $model
            ]);
        }
    }

    /**
     * Signup
     * @return string
     */
    public function actionSignup()
    {
        $model = new User();
        $request = Yii::$app->request->post();
        $session = Yii::$app->session;

        if (isset($request['btn-signup'])) {
            $username = isset($request['username']) ? Html::encode($request['username']) : '';
            $password = isset($request['password']) ? Html::encode($request['password']) : '';
            $full_name = isset($request['full_name']) ? Html::encode($request['full_name']) : '';
            $user_type = isset($request['user_type']) ? Html::encode($request['user_type']) : '';

            $model->username = $username;
            $model->password = $password;
            $model->type = $user_type;
            $model->full_name = $full_name;

            if ($model->signup()) {
                return $this->redirect(Url::toRoute(['/dang-nhap']));
            } else {
                $session->setFlash('error', 'Tài khoản không hợp lệ hoặc có lỗi xả ra. Vui lòng thử lại.');
                return $this->render('signup', [
                    'model' => $model
                ]);
            }
        } else {
            return $this->render('signup', [
                'model' => $model
            ]);
        }
    }

    /**
     * Kiểm tra tên đăng nhập đã tồn tại hay chưa
     */
    public function actionCheckUsername()
    {
        $request = Yii::$app->request->get();
        $username = isset($request['username']) ? Html::encode($request['username']) : '';
        $user_type = isset($request['user_type']) ? Html::encode($request['user_type']) : '';

        $check = User::findOne(['username' => $username, 'type' => $user_type]);
        if (!empty($check)) {
            echo json_encode(['status' => 0]);
            Yii::$app->end();
        } else {
            echo json_encode(['status' => 1]);
            Yii::$app->end();
        }
    }

    /**
     * Logout
     * @return \yii\web\Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();
        return $this->goHome();
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $slides = Slideshow::get_all_slideshows();
        $feature_course = Course::get_list_feature_course(8);
        $list_teacher = Teacher::get_list_teacher_feature(8);
        return $this->render('index', [
            'slides' => $slides,
            'feature_course' => $feature_course,
            'list_teacher' => $list_teacher
        ]);
    }
}
