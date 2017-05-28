<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Teacher;
use yii\db\Query;

/**
 * TeacherSearch represents the model behind the search form about `backend\models\Teacher`.
 */
class TeacherSearch extends Teacher
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'gender'], 'integer'],
            [['full_name', 'email', 'intro', 'work_place', 'phone', 'degree', 'created_time', 'updated_time'], 'safe'],
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
        $query = (new Query())->select('*')->from('teacher')->innerJoin('user', 'user.id=teacher.user_id')->where(['user.deleted' => 0]);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'user_id' => $this->user_id,
            'gender' => $this->gender,
            'created_time' => $this->created_time,
            'updated_time' => $this->updated_time,
        ]);

        $query->andFilterWhere(['like', 'full_name', $this->full_name])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'intro', $this->intro])
            ->andFilterWhere(['like', 'work_place', $this->work_place])
            ->andFilterWhere(['like', 'phone', $this->phone])
            ->andFilterWhere(['like', 'degree', $this->degree]);

        return $dataProvider;
    }
}
