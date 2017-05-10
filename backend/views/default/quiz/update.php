<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Quiz */

$this->title = Yii::t('cms', 'Update {modelClass}: ', [
    'modelClass' => 'Quiz',
]) . ' ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Quizzes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = Yii::t('cms', 'Update');
$this->params['title'] = Yii::t('cms', 'Update');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " . Yii::t('cms', 'Back'), 'url' => ['index'], 'options' => ['class' => 'btn btn-primary']],
    ['label'=>Icon::show('question-circle') . " " . Yii::t('cms', 'Quản lý câu hỏi'), 'url' => ['question', 'quiz_id' => $model->id], 'options' => ['class' => 'btn btn-info']],
];
?>
<div class="quiz-update">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
