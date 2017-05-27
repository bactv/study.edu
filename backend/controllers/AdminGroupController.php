<?php

namespace backend\controllers;

use backend\models\AdminAction;
use common\models\AdminControllerBase;
use Yii;
use backend\models\AdminGroup;
use common\models\search\AdminGroupSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * AdminGroupController implements the CRUD actions for AdminGroup model.
 */
class AdminGroupController extends BackendController
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
     * Lists all AdminGroup models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AdminGroupSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single AdminGroup model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new AdminGroup model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new AdminGroup();
        $request = Yii::$app->request->post();

        if ($model->load($request)) {
            $model->action_ids = isset($request['action_ids']) ? json_encode($request['action_ids']) : '';
            if($model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
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
     * Updates an existing AdminGroup model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $actions_ids = ($model->action_ids != '') ? json_decode($model->action_ids) : '';
        $request = Yii::$app->request->post();

        if ($model->load($request)) {
            $model->action_ids = isset($request['action_ids']) ? json_encode($request['action_ids']) : '';
            if($model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('update', [
                    'model' => $model,
                    'actions_ids' => $actions_ids
                ]);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
                'actions_ids' => $actions_ids
            ]);
        }
    }

    /**
     * Deletes an existing AdminGroup model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
//        $model = $this->findModel($id);
//        $model->deleted = 1;
//        $model->save();
        return $this->redirect(['index']);
    }

    /**
     * Finds the AdminGroup model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return AdminGroup the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = AdminGroup::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionUpdateController()
    {
        if (!Yii::$app->request->post() || !Yii::$app->request->isAjax) {
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();
        $controller_id = isset($request['controller_id']) ? $request['controller_id'] : '';
        $desc = isset($request['desc']) ? $request['desc'] : '';
        if ($controller_id != '' && $desc != '') {
            $model = AdminControllerBase::findOne(['controller_id' => $controller_id]);
            $model->description = $desc;
            $model->save();
        }
        echo "OK";
        Yii::$app->end();
    }

    public function actionUpdateAction()
    {
        if (!Yii::$app->request->post() || !Yii::$app->request->isAjax) {
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();
        $action_id = isset($request['action_id']) ? $request['action_id'] : '';
        $desc = isset($request['desc']) ? $request['desc'] : '';
        if ($action_id != '' && $desc != '') {
            $model = AdminAction::findOne(['action_id' => $action_id]);
            $model->description = $desc;
            $model->save();
        }
        echo "OK";
        Yii::$app->end();
    }
}
