<?php

namespace backend\controllers;

use Yii;
use backend\models\LessonQuizQuestionAnswer;
use common\models\search\LessonQuizQuestionAnswerSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * LessonQuizQuestionAnswerController implements the CRUD actions for LessonQuizQuestionAnswer model.
 */
class LessonQuizQuestionAnswerController extends BackendController
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
     * Lists all LessonQuizQuestionAnswer models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new LessonQuizQuestionAnswerSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single LessonQuizQuestionAnswer model.
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
     * Creates a new LessonQuizQuestionAnswer model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new LessonQuizQuestionAnswer();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ans_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing LessonQuizQuestionAnswer model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['lesson-quiz-question/view', 'id' => $model->question_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing LessonQuizQuestionAnswer model.
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
     * Finds the LessonQuizQuestionAnswer model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return LessonQuizQuestionAnswer the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = LessonQuizQuestionAnswer::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionListAnswer($question_id)
    {
        $lists = LessonQuizQuestionAnswer::findAll(['question_id' => $question_id]);
        return $this->renderAjax('list_answer', [
            'lists' => $lists,
            'question_id' => $question_id
        ]);
    }

    public function actionUpdateAnsTrue()
    {
        if (!Yii::$app->request->isPost || !Yii::$app->request->isAjax) {
            Yii::$app->end();
        }
        $request = Yii::$app->request->post();
        $ques_id = isset($request['ques_id']) ? $request['ques_id'] : '';
        $ans_id = isset($request['ans_id']) ? $request['ans_id'] : '';

        Yii::$app->db->createCommand()->update('lesson_quiz_question_answer', ['is_true' => 0], ['question_id' => $ques_id])->execute();
        Yii::$app->db->createCommand()->update('lesson_quiz_question_answer', ['is_true' => 1], ['ans_id' => $ans_id])->execute();
    }
}
