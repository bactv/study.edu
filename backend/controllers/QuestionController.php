<?php

namespace backend\controllers;

use backend\models\QuestionAnswer;
use backend\models\Quiz;
use Yii;
use backend\models\Question;
use common\models\search\QuestionSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * QuestionController implements the CRUD actions for Question model.
 */
class QuestionController extends BackendController
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
     * Lists all Question models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new QuestionSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Question model.
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
     * @param $quiz_id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionCreate($quiz_id)
    {
        $model = new Question();

        $quiz = Quiz::findOne(['id' => $quiz_id]);
        if (empty($quiz)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tồn tại");
        }

        if ($model->load(Yii::$app->request->post())) {
            $model->subject_id = $quiz->subject_id;
            $model->topic_id = $quiz->topic_id;
            $model->quiz_id = $quiz_id;
            $model->is_true = Yii::$app->request->post('is_true', 'ans_1');
            if ($model->save()) {
                Yii::$app->db->createCommand()->update('quiz', ['total_question' => count(Question::findAll(['quiz_id' => $quiz_id]))], [
                    'id' => $quiz_id
                ])->execute();
                if ($model->ans_1 != '') {
                    if ($model->is_true == 'ans_1') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_1, $true);
                }
                if ($model->ans_2 != '') {
                    if ($model->is_true == 'ans_2') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_2, $true);
                }
                if ($model->ans_3 != '') {
                    if ($model->is_true == 'ans_3') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_3, $true);
                }
                if ($model->ans_4 != '') {
                    if ($model->is_true == 'ans_4') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_4, $true);
                }
                if ($model->ans_5 != '') {
                    if ($model->is_true == 'ans_5') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_5, $true);
                }
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    private function save_answer($question_id, $content, $is_true = 0)
    {
        $model = new QuestionAnswer();
        $model->question_id = $question_id;
        $model->content = $content;
        $model->is_true = $is_true;
        $model->save();
    }

    /**
     * Updates an existing Question model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $answers = QuestionAnswer::findAll(['question_id' => $id]);
        for ($i = 0; $i < count($answers); $i++) {
            $model->{'ans_' . ($i + 1)} = $answers[$i]->{'content'};
            if ($answers[$i]->{'is_true'} == 1) {
                $model->is_true = 'ans_' . ($i + 1);
            }
        }

        if ($model->load(Yii::$app->request->post())) {
            $model->is_true = Yii::$app->request->post('is_true', 'ans_1');
            if ($model->save()) {
                QuestionAnswer::deleteAll(['question_id' => $id]);
                if ($model->ans_1 != '') {
                    if ($model->is_true == 'ans_1') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_1, $true);
                }
                if ($model->ans_2 != '') {
                    if ($model->is_true == 'ans_2') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_2, $true);
                }
                if ($model->ans_3 != '') {
                    if ($model->is_true == 'ans_3') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_3, $true);
                }
                if ($model->ans_4 != '') {
                    if ($model->is_true == 'ans_4') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_4, $true);
                }
                if ($model->ans_5 != '') {
                    if ($model->is_true == 'ans_5') {
                        $true = 1;
                    } else {
                        $true = 0;
                    }
                    $this->save_answer($model->id, $model->ans_5, $true);
                }
                return $this->redirect(['view', 'id' => $model->id]);
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
     * Deletes an existing Question model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $quiz_id = $model->quiz_id;
        if (!empty($model)) {
            QuestionAnswer::deleteAll(['question_id' => $id]);
            Yii::$app->db->createCommand()->update('quiz', ['total_question' => count(Question::findAll(['quiz_id' => $model->quiz_id]))], ['id' => $quiz_id])->execute();
            $model->delete();
        }
        return $this->redirect(['/quiz/question', 'quiz_id' => $quiz_id]);
    }

    /**
     * Finds the Question model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Question the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Question::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
