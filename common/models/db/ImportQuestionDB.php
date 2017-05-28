<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "import_question".
 *
 * @property integer $id
 * @property integer $quiz_id
 * @property string $question_content
 * @property string $question_solution
 * @property string $answer_1
 * @property string $answer_2
 * @property string $answer_3
 * @property string $answer_4
 * @property string $answer_5
 * @property string $answer_6
 * @property integer $ans_true
 * @property integer $status
 */
class ImportQuestionDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'import_question';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['quiz_id'], 'required'],
            [['quiz_id', 'ans_true', 'status'], 'integer'],
            [['question_content', 'question_solution', 'answer_1', 'answer_2', 'answer_3', 'answer_4', 'answer_5', 'answer_6'], 'string', 'max' => 500]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'quiz_id' => Yii::t('cms', 'Quiz ID'),
            'question_content' => Yii::t('cms', 'Question Content'),
            'question_solution' => Yii::t('cms', 'Question Solution'),
            'answer_1' => Yii::t('cms', 'Answer 1'),
            'answer_2' => Yii::t('cms', 'Answer 2'),
            'answer_3' => Yii::t('cms', 'Answer 3'),
            'answer_4' => Yii::t('cms', 'Answer 4'),
            'answer_5' => Yii::t('cms', 'Answer 5'),
            'answer_6' => Yii::t('cms', 'Answer 6'),
            'ans_true' => Yii::t('cms', 'Ans True'),
            'status' => Yii::t('cms', 'Status'),
        ];
    }
}
