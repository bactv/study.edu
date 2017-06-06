<?php

namespace backend\controllers;

use backend\models\Course;
use common\components\Utility;
use Yii;
use backend\models\Lesson;
use common\models\search\LessonSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * LessonController implements the CRUD actions for Lesson model.
 */
class LessonController extends BackendController
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
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy");
        }
        $course = Course::findOne(['id' => $_GET['course_id']]);
        $searchModel = new LessonSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'course' => $course
        ]);
    }

    /**
     * Displays a single Lesson model.
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
     * @throws NotFoundHttpException
     */
    public function actionCreate($course_id)
    {
        if ($course_id == '') {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tìm thấy");
        }
        $model = new Lesson();
        $session = Yii::$app->session;
        if ($model->load(Yii::$app->request->post())) {
            $model->video = UploadedFile::getInstance($model, 'video');
            if ($model->video != null) {
                $model->video_name = Utility::rewrite($model->video->baseName) . '.' . $model->video->extension;
            }
            $model->course_id = $course_id;
            $model->publish_date = Utility::formatDataTime($model->publish_date, '/', '-', false);

            if ($model->save() && $model->upload_file('video', $model->course_id, $model->id, 'video')) {
                $session->setFlash('success', 'Thành công.');
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
                'course_id' => $course_id
            ]);
        }
    }

    /**
     * Updates an existing Lesson model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $session = Yii::$app->session;
        $model->publish_date = Utility::formatDataTime($model->publish_date, '-', '/', false);
        if ($model->load(Yii::$app->request->post())) {
            $model->publish_date = Utility::formatDataTime($model->publish_date, '/', '-', false);
            $model->video = UploadedFile::getInstance($model, 'video');
            if ($model->video != '') {
                $model->video_name = Utility::rewrite($model->video->baseName) . '.' . $model->video->extension;
            }

            if ($model->save() && $model->upload_file('video', $model->course_id, $model->id, 'video')) {
                $session->setFlash('success', 'Thành công.');
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Lesson model.
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
     * Finds the Lesson model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Lesson the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Lesson::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
