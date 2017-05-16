<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Lesson;

/**
 * LessonSearch represents the model behind the search form about `backend\models\Lesson`.
 */
class LessonSearch extends Lesson
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'course_id', 'time_length', 'sort', 'number_view', 'status'], 'integer'],
            [['name', 'description', 'link_video', 'publish_date', 'created_time', 'updated_time'], 'safe'],
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
        $query = Lesson::find()->where(['deleted' => 0]);
        if (isset($params['course_id'])) {
            $query->andWhere(['course_id' => $params['course_id']]);
        }
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'course_id' => $this->course_id,
            'time_length' => $this->time_length,
            'sort' => $this->sort,
            'number_view' => $this->number_view,
            'status' => $this->status,
            'publish_date' => $this->publish_date,
            'created_time' => $this->created_time,
            'updated_time' => $this->updated_time,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'link_video', $this->link_video]);

        return $dataProvider;
    }
}
