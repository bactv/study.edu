<?php

namespace backend\controllers;

use backend\models\Lesson;
use common\components\Utility;
use Yii;
use backend\models\LessonDocument;
use common\models\search\LessonDocumentSearch;
use backend\components\BackendController;
use yii\base\Exception;
use yii\base\Model;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * LessonDocumentController implements the CRUD actions for LessonDocument model.
 */
class LessonDocumentController extends BackendController
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
     * Lists all LessonDocument models.
     * @param $lesson_id
     * @return mixed
     */
    public function actionIndex($lesson_id)
    {
        $searchModel = new LessonDocumentSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single LessonDocument model.
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
     * Creates a new LessonDocument model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($lesson_id)
    {
        $model = new LessonDocument();
        $model->scenario = 'create';
        $lesson = Lesson::findOne(['id' => $lesson_id]);
        if (empty($lesson)) {
            throw  new NotFoundHttpException("Trang bạn yêu cầu không tồn tại");
        }

        if ($model->load(Yii::$app->request->post())) {
            $model->file = UploadedFile::getInstances($model, 'file');
            if ($model->upload_file($lesson->course_id, $lesson_id, 'document')) {
                foreach ($model->file as $file) {
                    $model2 = new LessonDocument();
                    $model2->lesson_id = $lesson_id;
                    $model2->document_name = Utility::rewrite($file->baseName) . '.' . $file->extension;

                    if (!$model2->save()) {
                        throw new Exception("Có lỗi xảy ra");
                    }
                }
            }
            return $this->redirect(['index', 'lesson_id' => $lesson_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing LessonDocument model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->scenario = 'update';
        $lesson = Lesson::findOne(['id' => $model->lesson_id]);
        if (empty($lesson)) {
            throw  new NotFoundHttpException("Trang bạn yêu cầu không tồn tại");
        }
        if ($model->load(Yii::$app->request->post())) {
            $model->file = UploadedFile::getInstances($model, 'file');
            $model->document_name = Utility::rewrite($model->file[0]->baseName) . '.' . $model->file[0]->extension;
            if ($model->save() && $model->upload_file($lesson->course_id, $model->lesson_id, 'document')) {
                return $this->redirect(['view', 'id' => $model->id]);
            }

        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing LessonDocument model.
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
     * Finds the LessonDocument model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return LessonDocument the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = LessonDocument::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
