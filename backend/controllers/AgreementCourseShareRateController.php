<?php

namespace backend\controllers;

use backend\models\Agreement;
use Yii;
use backend\models\AgreementCourseShareRate;
use common\models\search\AgreementCourseShareRateSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * AgreementCourseShareRateController implements the CRUD actions for AgreementCourseShareRate model.
 */
class AgreementCourseShareRateController extends BackendController
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
     * Lists all AgreementCourseShareRate models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AgreementCourseShareRateSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single AgreementCourseShareRate model.
     * @param integer $agreement_id
     * @param integer $course_id
     * @return mixed
     */
    public function actionView($agreement_id, $course_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($agreement_id, $course_id),
        ]);
    }

    /**
     * @param $agreement_id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionCreate($agreement_id)
    {
        $model = new AgreementCourseShareRate();

        $agreement = Agreement::findOne(['agreement_id' => $agreement_id]);
        if (empty($agreement)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy");
        }

        if ($model->load(Yii::$app->request->post())) {
            $model->agreement_id = $agreement_id;
            if ($model->save()) {
                return $this->redirect(['/agreement/view', 'id' => $model->agreement_id]);
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
     * Updates an existing AgreementCourseShareRate model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $agreement_id
     * @param integer $course_id
     * @return mixed
     */
    public function actionUpdate($agreement_id, $course_id)
    {
        $model = $this->findModel($agreement_id, $course_id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/agreement/view', 'id' => $model->agreement_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
                'agreement_id' => $model->agreement_id
            ]);
        }
    }

    /**
     * Deletes an existing AgreementCourseShareRate model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $agreement_id
     * @param integer $course_id
     * @return mixed
     */
    public function actionDelete($agreement_id, $course_id)
    {
        //$this->findModel($agreement_id, $course_id)->delete();
        $model = $this->findModel($id);
        $model->deleted = 1;
        $model->save();
        return $this->redirect(['index']);
    }

    /**
     * Finds the AgreementCourseShareRate model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $agreement_id
     * @param integer $course_id
     * @return AgreementCourseShareRate the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($agreement_id, $course_id)
    {
        if (($model = AgreementCourseShareRate::findOne(['agreement_id' => $agreement_id, 'course_id' => $course_id])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
