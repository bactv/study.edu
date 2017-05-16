<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\LessonQuiz;

/**
 * LessonQuizSearch represents the model behind the search form about `backend\models\LessonQuiz`.
 */
class LessonQuizSearch extends LessonQuiz
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'course_id', 'lesson_id', 'pass_exam', 'total_question', 'time_length'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = LessonQuiz::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'course_id' => $this->course_id,
            'lesson_id' => $this->lesson_id,
            'pass_exam' => $this->pass_exam,
            'total_question' => $this->total_question,
            'time_length' => $this->time_length,
        ]);

        return $dataProvider;
    }
}
