<?php

namespace common\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Notification;

/**
 * NotificationSearch represents the model behind the search form about `backend\models\Notification`.
 */
class NotificationSearch extends Notification
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'sender_id', 'receiver_id', 'status'], 'integer'],
            [['type', 'content', 'created_time'], 'safe'],
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
     * @param array $params_filter
     *
     * @return ActiveDataProvider
     */
    public function search($params, $params_filter)
    {
        $query = Notification::find()->where(true);
        if (isset($params_filter['from_date']) && isset($params_filter['to_date'])) {
            $query->andWhere('created_time >= "' . trim($params_filter['from_date']) . '" AND created_time <= "' . trim($params_filter['to_date']) . '"');
        }
        if (isset($params_filter['notification_status']) && trim($params_filter['notification_status']) != null ) {
            $query->andWhere(['status' => $params_filter['notification_status']]);
        } else {
            $query->andWhere(['status' => 0]);
        }
        if (isset($params_filter['notification_type'])) {
            $query->andWhere(['type' => $params_filter['notification_type']]);
        }
        if (isset($params_filter['sender_id'])) {
            $query->andWhere(['sender_id' => $params_filter['sender_id']]);
        }
        if (isset($params_filter['receiver_id'])) {
            $query->andWhere(['receiver_id' => $params_filter['receiver_id']]);
        }

        if (!isset($params_filter['sender_id']) && !isset($params_filter['receiver_id'])) {
            $query->andWhere(['receiver_id' => 0]);
        }

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if ($this->load($params) && !$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'sender_id' => $this->sender_id,
            'receiver_id' => $this->receiver_id,
            'status' => $this->status,
            'created_time' => $this->created_time,
        ]);

        $query->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'content', $this->content]);

        return $dataProvider;
    }
}
