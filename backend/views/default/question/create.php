<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Question */

$this->title = Yii::t('cms', 'Create {modelClass}', [
    'modelClass' => 'Question',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Đề thi'), 'url' => ['/quiz/question', 'quiz_id' => Yii::$app->request->get('quiz_id')]];
$this->params['breadcrumbs'][] = $this->title;
$this->params['title'] = Yii::t('cms', 'Create');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " .Yii::t('cms', 'Back'), 'url' => ['index'], 'options' => ['class' => 'btn btn-primary']],
];
?>
<div class="question-update">
    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>
</div>

