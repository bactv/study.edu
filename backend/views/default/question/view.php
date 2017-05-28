<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Question */

$this->title = $model->id;
//$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Questions'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="question-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('cms', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'content',
                'format' => 'html'
            ],
            [
                'attribute' => 'solution',
                'format' => 'html'
            ],
            [
                'attribute' => 'id',
                'label' => 'Đáp án',
                'format' => 'html',
                'value' => function ($model) {
                    $str = '';
                    $answers = \backend\models\QuestionAnswer::findAll(['question_id' => $model['id']]);
                    $arr = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
                    foreach ($answers as $k => $ans) {
                        $c = ($ans->is_true == 1) ? 'c_true' : 'c_false';
                        $str .= '<p class="' . $c . '">' . $arr[$k] . '. ' . $ans->content . '</p>';
                    }
                    return $str;
                }
            ],
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['status'] == 1 ? 'Active' : 'Inactive';   
                }
            ],
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
    p.c_true {
        color: #00aa00;
        font-weight: bold;
    }
</style>
