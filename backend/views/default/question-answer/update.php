<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\QuestionAnswer */

$this->title = Yii::t('cms', 'Update {modelClass}: ', [
    'modelClass' => 'Question Answer',
]) . ' ' . $model->ans_id;
$this->params['breadcrumbs'][] = Yii::t('cms', 'Update');
$this->params['title'] = Yii::t('cms', 'Update');
?>
<div class="question-answer-update">
    <?= $this->render('_form', [
        'model' => $model,
        'question_id' => $question_id
    ]) ?>

</div>
