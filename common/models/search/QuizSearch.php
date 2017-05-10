<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Quiz;

/**
 * QuizSearch represents the model behind the search form about `backend\models\Quiz`.
 */
class QuizSearch extends Quiz
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'quiz_type_id', 'subject_id', 'topic_id', 'time_length', 'total_question', 'status', 'privacy'], 'integer'],
            [['name', 'description', 'level', 'created_time', 'updated_time'], 'safe'],
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
        $query = Quiz::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'quiz_type_id' => $this->quiz_type_id,
            'subject_id' => $this->subject_id,
            'topic_id' => $this->topic_id,
            'time_length' => $this->time_length,
            'total_question' => $this->total_question,
            'status' => $this->status,
            'privacy' => $this->privacy,
            'created_time' => $this->created_time,
            'updated_time' => $this->updated_time,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'level', $this->level]);

        return $dataProvider;
    }
}
