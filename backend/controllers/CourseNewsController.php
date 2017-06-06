<?php

namespace backend\controllers;

use backend\components\Notification;
use backend\models\Course;
use Yii;
use backend\models\CourseNews;
use common\models\search\CourseNewsSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CourseNewsController implements the CRUD actions for CourseNews model.
 */
class CourseNewsController extends BackendController
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
     * @return string
     * @throws NotFoundHttpException
     */
    public function actionIndex()
    {
        if (!isset($_GET['course_id'])) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tồn tại.");
        }
        $course = Course::findOne(['id' => $_GET['course_id']]);
        $searchModel = new CourseNewsSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'course' => $course
        ]);
    }

    /**
     * Displays a single CourseNews model.
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
     * @param $course_id
     * @return string|\yii\web\Response
     */
    public function actionCreate($course_id)
    {
        $model = new CourseNews();

        if ($model->load(Yii::$app->request->post())) {
            $model->course_id = $course_id;
            $model->user_id = 0;
            if ($model->save()) {

                // thông báo notification đến học sinh trong khóa học
                Notification::create_notification($course_id, $model->id);

                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                    'course_id' => $course_id
                ]);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
                'course_id' => $course_id
            ]);
        }
    }

    /**
     * Updates an existing CourseNews model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('update', [
                    'model' => $model,
                ]);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing CourseNews model.
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
     * Finds the CourseNews model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return CourseNews the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = CourseNews::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
