<?php

namespace backend\controllers;

use backend\models\LessonQuiz;
use backend\models\LessonQuizQuestionAnswer;
use Yii;
use backend\models\LessonQuizQuestion;
use common\models\search\LessonQuizQuestionSearch;
use backend\components\BackendController;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * LessonQuizQuestionController implements the CRUD actions for LessonQuizQuestion model.
 */
class LessonQuizQuestionController extends BackendController
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
     * Lists all LessonQuizQuestion models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new LessonQuizQuestionSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single LessonQuizQuestion model.
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
     * @param $lesson_quiz_id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionCreate($lesson_quiz_id)
    {
        $model = new LessonQuizQuestion();

        $quiz = LessonQuiz::findOne(['id' => $lesson_quiz_id]);
        if (empty($quiz)) {
            throw new NotFoundHttpException("Trang bạn yêu cầu không tồn tại");
        }

        if ($model->load(Yii::$app->request->post())) {
            $model->lesson_id = $quiz->lesson_id;
            $model->quiz_id = $quiz->id;
            $model->is_true = Yii::$app->request->post('is_true', 'ans_1');
            if ($model->save()) {
                Yii::$app->db->createCommand()->update('quiz', ['total_question' => count(LessonQuizQuestion::findAll(['quiz_id' => $quiz->id]))], [
                    'id' => $quiz->id
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
        $model = new LessonQuizQuestionAnswer();
        $model->question_id = $question_id;
        $model->ans_content = $content;
        $model->is_true = $is_true;
        $model->save();
    }

    /**
     * Updates an existing LessonQuizQuestion model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing LessonQuizQuestion model.
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
     * Finds the LessonQuizQuestion model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return LessonQuizQuestion the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = LessonQuizQuestion::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
