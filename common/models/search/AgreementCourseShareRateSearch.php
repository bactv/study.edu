<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\AgreementCourseShareRate;

/**
 * AgreementCourseShareRateSearch represents the model behind the search form about `backend\models\AgreementCourseShareRate`.
 */
class AgreementCourseShareRateSearch extends AgreementCourseShareRate
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['agreement_id', 'course_id', 'share_rate'], 'integer'],
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
        $query = AgreementCourseShareRate::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'agreement_id' => $this->agreement_id,
            'course_id' => $this->course_id,
            'share_rate' => $this->share_rate,
        ]);

        return $dataProvider;
    }
}
