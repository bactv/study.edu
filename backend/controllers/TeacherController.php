<?php

namespace backend\controllers;

use backend\models\User;
use Yii;
use backend\models\Teacher;
use common\models\search\TeacherSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * TeacherController implements the CRUD actions for Teacher model.
 */
class TeacherController extends BackendController
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
     * Lists all Teacher models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TeacherSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Teacher model.
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
     * Creates a new Teacher model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Teacher();

        if ($model->load(Yii::$app->request->post())) {
            $last_user_id = intval(User::getLastId()['id']);
            $user = new User();
            $user->type = 2;
            $user->username = 'admin_' . ($last_user_id + 1);
            $user->password = md5('admin_' . ($last_user_id + 1));

            if ($user->save()) {
                $model->user_id = $user->id;
                $model->avatar = UploadedFile::getInstance($model, 'avatar');

                if ($model->save() && $model->uploadAvatar($model->user_id)) {
                    return $this->redirect(['view', 'id' => $model->user_id]);
                } else {
                    return $this->render('create', [
                        'model' => $model,
                    ]);
                }
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Teacher model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
            $model->avatar = UploadedFile::getInstance($model, 'avatar');
            if ($model->save() && $model->uploadAvatar($model->user_id)) {
                return $this->redirect(['view', 'id' => $model->user_id]);
            } else {
                return $this->render('create', [
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
     * Deletes an existing Teacher model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        //$this->findModel($id)->delete();
//        $model = $this->findModel($id);
//        $model->deleted = 1;
//        $model->save();
        $model = User::findOne(['id' => $id]);
        $model->deleted = 1;
        $model->save();
        return $this->redirect(['index']);
    }

    /**
     * Finds the Teacher model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Teacher the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Teacher::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
