<?php

namespace backend\controllers;

use backend\models\Agreement;
use common\components\Utility;
use Yii;
use backend\models\AgreementAddendum;
use common\models\search\AgreementAddendumSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * AgreementAddendumController implements the CRUD actions for AgreementAddendum model.
 */
class AgreementAddendumController extends BackendController
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
     * Lists all AgreementAddendum models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AgreementAddendumSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single AgreementAddendum model.
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
     * @param $agreement_id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionCreate($agreement_id)
    {
        $model = new AgreementAddendum();

        $agreement = Agreement::findOne(['agreement_id' => $agreement_id]);
        if (empty($agreement)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy.");
        }

        if ($model->load(Yii::$app->request->post())) {
            $model->from_date = Utility::formatDataTime($model->from_date, '/', '-', false);
            $model->to_date = Utility::formatDataTime($model->to_date, '/', '-', false);
            if ($model->save()) {
                return $this->redirect(['/agreement-addendum/view', 'id' => $model->addendum_id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                    'agreement_id' => $agreement_id
                ]);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
                'agreement_id' => $agreement_id
            ]);
        }
    }

    /**
     * Updates an existing AgreementAddendum model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $model->from_date = Utility::formatDataTime($model->from_date, '-', '/', false);
        $model->to_date = Utility::formatDataTime($model->to_date, '-', '/', false);
        if ($model->load(Yii::$app->request->post())) {
            $model->from_date = Utility::formatDataTime($model->from_date, '/', '-', false);
            $model->to_date = Utility::formatDataTime($model->to_date, '/', '-', false);
            if ($model->save()) {
                return $this->redirect(['/agreement-addendum/view', 'id' => $model->addendum_id]);
            } else {
                return $this->render('update', [
                    'model' => $model,
                    'agreement_id' => $model->agreement_id
                ]);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
                'agreement_id' => $model->agreement_id
            ]);
        }
    }

    /**
     * Deletes an existing AgreementAddendum model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        //$this->findModel($id)->delete();
        $model = $this->findModel($id);
        $model->deleted = 1;
        $model->save();
        return $this->redirect(['index']);
    }

    /**
     * Finds the AgreementAddendum model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return AgreementAddendum the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = AgreementAddendum::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
