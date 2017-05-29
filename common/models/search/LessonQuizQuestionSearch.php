<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\LessonQuizQuestion;

/**
 * LessonQuizQuestionSearch represents the model behind the search form about `backend\models\LessonQuizQuestion`.
 */
class LessonQuizQuestionSearch extends LessonQuizQuestion
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'lesson_id', 'quiz_id'], 'integer'],
            [['question'], 'safe'],
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
        $query = LessonQuizQuestion::find();
        if (isset($params['lesson_quiz_id'])) {
            $query->where(['quiz_id' => $params['lesson_quiz_id']]);
        }

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'lesson_id' => $this->lesson_id,
            'quiz_id' => $this->quiz_id,
        ]);

        $query->andFilterWhere(['like', 'question', $this->question]);

        return $dataProvider;
    }
}
