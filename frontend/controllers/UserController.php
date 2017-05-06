<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:21 CH
 */
namespace frontend\controllers;

use Yii;
use yii\web\Controller;

class UserController extends Controller
{
    public function actionIndex()
    {
        $type = 1; // student
        if ($type == 1) {
            $this->layout = 'student_layout';
            return $this->render('student/index');
        }
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