<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\LessonQuizQuestionAnswer;

/**
 * LessonQuizQuestionAnswerSearch represents the model behind the search form about `backend\models\LessonQuizQuestionAnswer`.
 */
class LessonQuizQuestionAnswerSearch extends LessonQuizQuestionAnswer
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ans_id', 'lesson_id', 'question_id', 'is_true'], 'integer'],
            [['ans_content'], 'safe'],
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
        $query = LessonQuizQuestionAnswer::find();
        if (!empty($params['question_id'])) {
            $query->where(['question_id' => $params['question_id']]);
        }

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'ans_id' => $this->ans_id,
            'lesson_id' => $this->lesson_id,
            'question_id' => $this->question_id,
            'is_true' => $this->is_true,
        ]);

        $query->andFilterWhere(['like', 'ans_content', $this->ans_content]);

        return $dataProvider;
    }
}
