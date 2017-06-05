<?php

namespace backend\controllers;

use common\components\Utility;
use Yii;
use backend\models\Notification;
use common\models\search\NotificationSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * NotificationController implements the CRUD actions for Notification model.
 */
class NotificationController extends BackendController
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Notification models.
     * @return mixed
     */
    public function actionIndex()
    {
        $request = Yii::$app->request->get();
        $params = [];
        $notification_daterange = isset($request['notification_daterange']) ? $request['notification_daterange'] : '';
        $notification_type = isset($request['notification_type']) ? $request['notification_type'] : '';
        $notification_status = isset($request['notification_status']) ? $request['notification_status'] : '';
        $notification_role = isset($request['notification_role']) ? $request['notification_role'] : '';


        if (!empty($notification_daterange)) {
            $ex = explode('-', $notification_daterange);
            $from_date = Utility::formatDataTime(trim($ex[0]), '/', '-', false) . ' 00:00:00';
            $to_date = Utility::formatDataTime(trim($ex[1]), '/', '-', false) . ' 23:59:59';

            $params['from_date'] = $from_date;
            $params['to_date'] = $to_date;
        }
        if (!empty($notification_type)) {
            $params['notification_type'] = $notification_type;
        }
        if (!empty($notification_status) || $notification_status == 0) {
            $params['notification_status'] = $notification_status;
        }
        if (!empty($notification_role)) {
            if ($notification_role == 1) {
                $params['sender_id'] = 0;
            } else if ($notification_role == 2) {
                $params['receiver_id'] = 0;
            }
        }
        $searchModel = new NotificationSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams, $params);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'notification_daterange' => $notification_daterange,
            'notification_type' => $notification_type,
            'notification_status' => $notification_status,
            'notification_role' => $notification_role
        ]);
    }

    /**
     * @param $id
     * @return string
     */
    public function actionView($id)
    {
        Yii::$app->db->createCommand()->update('notification', ['status' => 1], ['id' => $id])->execute();
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Notification model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Notification();

        $request = Yii::$app->request->post();
        if ($model->load(Yii::$app->request->post())) {
            $receiver_ids = isset($request['Notification']['receiver_id']) ? $request['Notification']['receiver_id'] : [];
            if ($receiver_ids != null) {
                foreach ($receiver_ids as $id) {
                    Yii::$app->db->createCommand()->insert('notification', [
                        'sender_id' => 0,
                        'receiver_id' => $id,
                        'type' => Yii::$app->params['type_notification']['system_feedback'],
                        'content' => $model->content,
                        'status' => 0,
                        'created_time' => date('Y-m-d H:i:s')
                    ])->execute();
                }
                return $this->redirect(['index']);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Notification model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @param integer $receiver_id
     * @return mixed
     */
    public function actionUpdate($id, $receiver_id)
    {
        $model = $this->findModel($id, $receiver_id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id, 'receiver_id' => $model->receiver_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * @param $id
     * @return \yii\web\Response
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
        return $this->redirect(['index']);
    }

    /**
     * @param $id
     * @return Notification
     * @throws NotFoundHttpException
     */
    protected function findModel($id)
    {
        $model = Notification::findOne(['id' => $id]);
        if (!empty($model)) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
