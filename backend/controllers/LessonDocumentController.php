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
     * @param $lesson_id
     * @return string|\yii\web\Response
     * @throws Exception
     * @throws NotFoundHttpException
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
                foreach ($model->file as $k => $file) {
                    $model2 = new LessonDocument();
                    $model2->lesson_id = $lesson_id;
                    $model2->document_name = Utility::rewrite($file->baseName) . '.' . $file->extension;
                    $model2->file = $file;
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
     * @param $id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
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
            $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['assets.course']['path'] . $lesson['course_id'] . '/' . $model['lesson_id'] . '/document/' . $model['document_name'];
            $model->file = UploadedFile::getInstance($model, 'file');
            $model->document_name = Utility::rewrite($model->file->baseName) . '.' . $model->file->extension;
            $chk = ($model->file != null) ? true : false;
            if ($model->save() && $model->upload_file2($lesson->course_id, $model->lesson_id, 'document')) {
                if ($chk) {
                    Utility::delete_file($path);
                }
                return $this->redirect(['view', 'id' => $model->id]);
            }
            return $this->render('update', [
                'model' => $model,
            ]);

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
