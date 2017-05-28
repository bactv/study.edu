<?php

namespace backend\controllers;

use common\components\Utility;
use Yii;
use backend\models\Course;
use common\models\search\CourseSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * CourseController implements the CRUD actions for Course model.
 */
class CourseController extends BackendController
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
     * Lists all Course models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CourseSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Course model.
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
     * Creates a new Course model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Course();

        $model->scenario = 'create';
        $session = Yii::$app->session;
        if ($model->load(Yii::$app->request->post())) {
            $model->teacher_ids = json_encode($model->teacher_ids);
            $model->logo = UploadedFile::getInstance($model, 'logo');
            $model->deadline_register = Utility::formatDataTime($model->deadline_register, '/', '-', false);

            if ($model->logo == null) {
                $session->setFlash('error', 'Bạn cần upload logo khóa học');
                return $this->render('create', [
                    'model' => $model,
                ]);
            }

            if ($model->save() && $model->upload_file('logo', $model->id, 'logo')) {
                $session->setFlash('success', 'Khóa học được tạo thành công.');
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Course model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->deadline_register = Utility::formatDataTime($model->deadline_register, '-', '/', false);

        $model->teacher_ids = json_decode($model->teacher_ids);
        $session = Yii::$app->session;
        if ($model->load(Yii::$app->request->post())) {
            $model->teacher_ids = json_encode($model->teacher_ids);
            $model->logo = UploadedFile::getInstance($model, 'logo');
            $model->deadline_register = Utility::formatDataTime($model->deadline_register, '/', '-', false);

            if ($model->save() && $model->upload_file('logo', $model->id, 'logo')) {
                $session->setFlash('success', 'Cập nhật thành công.');
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Course model.
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
     * Finds the Course model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Course the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Course::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
