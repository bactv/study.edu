<?php

namespace backend\controllers;

use Yii;
use backend\models\QuestionAnswer;
use common\models\search\QuestionAnswerSearch;
use backend\components\BackendController;
use yii\helpers\Url;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * QuestionAnswerController implements the CRUD actions for QuestionAnswer model.
 */
class QuestionAnswerController extends BackendController
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
     * Lists all QuestionAnswer models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new QuestionAnswerSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single QuestionAnswer model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id, $question_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
            'question_id' => $question_id
        ]);
    }

    /**
     * Creates a new QuestionAnswer model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($question_id)
    {
        $model = new QuestionAnswer();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ans_id, 'question_id' => $question_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
                'question_id' => $question_id
            ]);
        }
    }

    /**
     * Updates an existing QuestionAnswer model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id, $question_id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ans_id, 'question_id' => $question_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
                'question_id' => $question_id
            ]);
        }
    }

    /**
     * Deletes an existing QuestionAnswer model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id, $question_id)
    {
        $this->findModel($id)->delete();
        return $this->redirect(Url::toRoute(['/question/update', 'id' => $question_id]));
    }

    /**
     * Finds the QuestionAnswer model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return QuestionAnswer the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = QuestionAnswer::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionListAnswer()
    {
        $request = Yii::$app->request->get();
        $question_id = isset($request['question_id']) ? $request['question_id'] : '';
        $lists = QuestionAnswer::findAll(['question_id' => $question_id]);
        return $this->renderAjax('list_answer_by_question', [
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

        Yii::$app->db->createCommand()->update('question_answer', ['is_true' => 0], ['question_id' => $ques_id])->execute();
        Yii::$app->db->createCommand()->update('question_answer', ['is_true' => 1], ['ans_id' => $ans_id])->execute();
    }
}
