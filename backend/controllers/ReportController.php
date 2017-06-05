<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 17/05/2017
 * Time: 11:38 SA
 */
namespace backend\controllers;

use backend\components\BackendController;
use backend\models\Report;
use common\components\Utility;
use Yii;

class ReportController extends BackendController
{
    public function actionAccessStatistic()
    {
        $request = Yii::$app->request->get();
        $from_date = date('d/m/Y', strtotime(date('d/m/Y') . ' -7 days'));
        $to_date = date('d/m/Y');

        $daterange = isset($request{'daterange'}) ? $request['daterange'] : "$from_date - $to_date";

        $results = [];
        if (isset($request['search'])) {
            if (!empty($daterange)) {
                $ex = explode('-', $daterange);
                $from_date = Utility::formatDataTime(trim($ex[0]), '/', '-', false);
                $to_date = Utility::formatDataTime(trim($ex[1]), '/', '-', false);
            }
        }
        if ($from_date == $to_date) {
            $curr_hours = date('H');
            if ($from_date < date('Y-m-d')) {
                $curr_hours = 23;
            }
            for ($i = 0; $i <= $curr_hours; $i++) {
                $tmp = (strlen($i) == 1) ? '0' . $i : $i;
                $results[$tmp] = [
                    'total_visits' => 0,
                    'total_user_visits' => 0,
                    'total_guest_visits' => 0
                ];
            }
        } else {
            foreach (Utility::getDatesFromRange($from_date, $to_date) as $date) {
                $results[$date] = [
                    'total_visits' => 0,
                    'total_user_visits' => 0,
                    'total_guest_visits' => 0
                ];
            }
        }

        $datas = [];
        foreach ($results as $k => $item) {
            if ($from_date == $to_date) {
                $start = date('Y-m-d ' . $k . ':00:00', strtotime($from_date));
                $end = date('Y-m-d ' . $k . ':59:59', strtotime($from_date));
                $tmp = $k . ':00';
            } else {
                $start = date('Y-m-d', strtotime($from_date)) . ' 00:00:00';
                $end = date('Y-m-d', strtotime($to_date)) . ' 23:59:59';
                $tmp = Utility::formatDataTime($k, '-', '/', false);
            }
            $data = Report::access_statistic($start, $end);
            foreach ($data as $dt) {
                $results[$k]['total_visits'] = $dt['total_visits'];
                $results[$k]['total_user_visits'] = $dt['total_user_visits'];
                $results[$k]['total_guest_visits'] = $dt['total_guest_visits'];
            }
            $datas[$tmp] = $results[$k];
        }

        return $this->render('access_statistic', [
            'daterange' => $daterange,
            'results' => $datas
        ]);
    }

    public function actionTotalStatistic()
    {
        $request = Yii::$app->request->get();
        $from_date = date('d/m/Y', strtotime(date('d/m/Y') . ' -7 days'));
        $to_date = date('d/m/Y');

        $daterange = isset($request{'daterange'}) ? $request['daterange'] : "$from_date - $to_date";

        $results = [];
        if (isset($request['search'])) {
            if (!empty($daterange)) {
                $ex = explode('-', $daterange);
                $from_date = Utility::formatDataTime(trim($ex[0]), '/', '-', false);
                $to_date = Utility::formatDataTime(trim($ex[1]), '/', '-', false);
            }
        }
        if ($from_date == $to_date) {
            $curr_hours = date('H');
            if ($from_date < date('Y-m-d')) {
                $curr_hours = 23;
            }
            for ($i = 0; $i <= $curr_hours; $i++) {
                $tmp = (strlen($i) == 1) ? '0' . $i : $i;
                $results[$tmp] = [
                    'total_visits' => 0,
                    'total_user_visits' => 0,
                    'total_guest_visits' => 0
                ];
            }
        } else {
            foreach (Utility::getDatesFromRange($from_date, $to_date) as $date) {
                $results[$date] = [
                    'total_visits' => 0,
                    'total_user_visits' => 0,
                    'total_guest_visits' => 0
                ];
            }
        }

        $datas = [];
        foreach ($results as $k => $item) {
            if ($from_date == $to_date) {
                $start = date('Y-m-d ' . $k . ':00:00', strtotime($from_date));
                $end = date('Y-m-d ' . $k . ':59:59', strtotime($from_date));
                $tmp = $k . ':00';
            } else {
                $start = date('Y-m-d', strtotime($from_date)) . ' 00:00:00';
                $end = date('Y-m-d', strtotime($to_date)) . ' 23:59:59';
                $tmp = Utility::formatDataTime($k, '-', '/', false);
            }
            $data = Report::access_statistic($start, $end);
            foreach ($data as $dt) {
                $results[$k]['total_visits'] = $dt['total_visits'];
                $results[$k]['total_user_visits'] = $dt['total_user_visits'];
                $results[$k]['total_guest_visits'] = $dt['total_guest_visits'];
            }
            $datas[$tmp] = $results[$k];
        }

        return $this->render('access_statistic', [
            'daterange' => $daterange,
            'results' => $datas
        ]);
    }
}