<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 07/05/2017
 * Time: 10:53 SA
 */
namespace frontend\controllers;

use common\components\Utility;
use frontend\components\EventProcess;
use frontend\models\Student;
use frontend\models\Transaction;
use frontend\models\TransactionError;
use frontend\models\User;
use Yii;
use yii\web\Controller;

class ChargingController extends Controller
{
    public function actions()
    {
        // nếu user chưa đăng nhập hoặc không phải là tài khỏa học sinh thì return false;
        if (empty(Yii::$app->user->identity) || Yii::$app->user->identity->getUserType() != 1) {
            Yii::$app->end();
        }
    }

    public function actionProcessCharge()
    {
        if (!Yii::$app->request->isAjax || !Yii::$app->request->isPost) {
            Yii::$app->end();
        }

        // check nạp sai 5 lần trong vòng 30 phút
        $check = TransactionError::check_over_five_times(Yii::$app->user->identity->getId());
        if (intval($check) == 5) {
            Yii::$app->end();
        }

        $request = Yii::$app->request->post();
        $telco_type = isset($request['telco_type']) ? $request['telco_type'] : '';
        $serial_number = isset($request['serial_number']) ? $request['serial_number'] : '';
        $code_number = isset($request['code_number']) ? $request['code_number'] : '';

        if (($telco_type == '' || !in_array($telco_type, Yii::$app->params['telco_types'])) || ($serial_number == '' || !is_numeric($serial_number)) ||
            ($code_number == '' || !is_numeric($code_number))) {
            echo json_encode(['status' => 0, 'message' => 'Có lỗi xảy ra. Vui lòng thử lại sau.']);
            Yii::$app->end();
        }

        if ($telco_type != 'viettel') {
            echo json_encode(['status' => 0, 'message' => 'Xin lỗi, hệ thống chỉ đang hoạt động với nhà mạng Viettel.']);
            Yii::$app->end();
        }

        $params = [
            'telco_type' => $telco_type,
            'serial_number' => $serial_number,
            'code_number' => $code_number
        ];

        header('Content-type: application/json');

        $return_json = [];
        $result = Utility::curlSendPost(Yii::$app->params['api']['charging'][$telco_type], $params);
        if ($result == false) {
            echo json_encode(['status' => 0, 'message' => 'Xin lỗi, hệ thống đang lỗi, vui lòng thử lại sau.']);
            Yii::$app->end();
        }
        $str = json_decode($result);
        $return_json['status'] = $str->{'code'};
        $return_json['message'] = Yii::$app->params['charge_code_status']['viettel'][$str->{'code'}];
        if (!empty($str) && $str->{'code'} == 200) {
            $money = intval(Utility::exchangeMoney(intval($str->{'money'})));
            Yii::$app->db->createCommand("UPDATE student SET balance = balance + " . $money . " WHERE user_id=" . Yii::$app->user->identity->getId())->execute();
            $std = Student::findOne(['user_id' => Yii::$app->user->identity->getId()]);
            // lưu vào transaction
            Transaction::logTransaction(Yii::$app->user->identity->getId(), 'CHARGE_MONEY', $money, json_encode($request), json_encode($str), $std['balance']);

            EventProcess::user_charge_money_gift_promotion(Yii::$app->user->identity->getId(), $money);

            $return_json['message'] = sprintf(Yii::$app->params['charge_code_status']['viettel'][200], number_format($money));
            echo json_encode($return_json);
            Yii::$app->end();
        }
        // nếu nhập không đúng mã thẻ
        if ($str->{'code'} != 200) {
            TransactionError::logTransaction(Yii::$app->user->identity->getId(), 'CHARGE_MONEY', $str->{'code'}, json_encode($request), json_encode($str));

            $check = TransactionError::check_over_five_times(Yii::$app->user->identity->getId());
            // nếu 5 lần thất bại, deactive tài khoản
            if ($check == 5) {
                $user = User::findOne(['id' => Yii::$app->user->identity->getId()]);
                $user->status = 0;
                $user->deactive_time = date('Y-m-d H:i');
                $user->active_time = date('Y-m-d H:i', strtotime(date('Y-m-d H:i') . ' +1 days'));
                $user->save();

                echo json_encode(['status' => 222, 'message' => 'Bạn đã nạp sai 5 lần liên tiếp, hệ thống sẽ khóa tài khoản và mở lại sau 1 ngày. 
                Thời gian mở lại tài khoản: <b>' . $user->active_time . '</b>.']);
                Yii::$app->end();
            }
            echo json_encode($return_json);
            Yii::$app->end();
        }
    }
}