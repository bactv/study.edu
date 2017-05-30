<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 30/05/2017
 * Time: 11:57 CH
 */
namespace frontend\controllers;

use frontend\models\Course;
use frontend\models\Notification;
use Yii;
use yii\base\Controller;
use yii\web\ForbiddenHttpException;

class NotificationController extends Controller
{
    protected $_user;
    public function actions()
    {
        $user = Yii::$app->user->identity;
        if (empty($user)) {
            throw new ForbiddenHttpException("Bạn không có quyền truy cập trang này.");
        }
        $this->_user = $user;
    }

    public function actionSendRequestCourse()
    {
        if (!Yii::$app->request->isPost || !Yii::$app->request->isAjax) {
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();
        $sender_id = isset($request['sender_id']) ? $request['sender_id'] : '';
        $course_id = isset($request['course_id']) ? $request['course_id'] : '';
        if ($sender_id != $this->_user->id || $course_id == '') {
            Yii::$app->end();
        }
        $course = Course::findOne(['id' => $course_id]);

        $model = new Notification();
        $model->sender_id = $sender_id;
        $model->receiver_id = 0;
        $model->content = "Xét duyệt khóa học: ID = " . $course_id . "###" . $course['name'];
        $model->type = Yii::$app->params['type_notification']['send_request_course'];
        $model->created_time = date('Y-m-d H:i:s');
        $model->status = 0;
        var_dump($model->save());
        var_dump($model->getErrors());
        echo "OK";
        Yii::$app->end();
    }
}