<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\LessonDocument;

/**
 * LessonDocumentSearch represents the model behind the search form about `backend\models\LessonDocument`.
 */
class LessonDocumentSearch extends LessonDocument
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'lesson_id'], 'integer'],
            [['document_name', 'created_time'], 'safe'],
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
        $query = LessonDocument::find();
        if (isset($params['lesson_id'])) {
            $query->where(['lesson_id' => $params['lesson_id']]);
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
            'created_time' => $this->created_time,
        ]);

        $query->andFilterWhere(['like', 'document_name', $this->document_name]);

        return $dataProvider;
    }
}
