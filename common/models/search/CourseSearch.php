<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Course;

/**
 * CourseSearch represents the model behind the search form about `backend\models\Course`.
 */
class CourseSearch extends Course
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'party_id', 'status', 'deleted', 'approved', 'approver', 'course_type_id', 'subject_id'], 'integer'],
            [['name', 'teacher_ids', 'description', 'deadline_register', 'created_time', 'updated_time'], 'safe'],
            [['price'], 'number'],
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
        $query = Course::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'party_id' => $this->party_id,
            'deadline_register' => $this->deadline_register,
            'status' => $this->status,
            'deleted' => $this->deleted,
            'approved' => $this->approved,
            'approver' => $this->approver,
            'price' => $this->price,
            'course_type_id' => $this->course_type_id,
            'subject_id' => $this->subject_id,
            'created_time' => $this->created_time,
            'updated_time' => $this->updated_time,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'teacher_ids', $this->teacher_ids])
            ->andFilterWhere(['like', 'description', $this->description]);

        $query->orderBy('id DESC');

        return $dataProvider;
    }
}
