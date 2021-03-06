<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 10/05/2017
 * Time: 9:53 SA
 */
use yii\helpers\Html;
use kartik\icons\Icon;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

?>

<?php if (isset($lists) && count($lists) > 0) { ?>
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
        <thead>
            <tr>
                <th>STT</th>
                <th>Nội dung</th>
                <th>Đáp án đúng?</th>
                <th>#</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach ($lists as $k => $item) {
            $arr_label = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
            ?>
            <tr>
                <td><?php echo $arr_label[$k] ?></td>
                <td><?php echo $item['content'] ?></td>
                <td><?php echo Html::tag('input', $item['is_true'], [
                        'type' => 'radio',
                        'name' => 'ques_' . $item['question_id'],
                        ($item['is_true'] == 1) ? 'checked' : '' => '',
                        'id' => 'ans_true',
                        'data-ans_id' => $item['ans_id'],
                        'data-ques_id' => $item['question_id']
                    ]) ?>
                </td>
                <th>
                    <?php echo Html::a(Icon::show('pencil-square-o'), Url::toRoute(['/question-answer/update', 'id' => $item['ans_id'], 'question_id' => $question_id]), [
                        'title' => Yii::t('cms', 'Update'),
                        'class'=>'btn btn-primary btn-xs btn-app',
                        'data-pjax' => '0',
                        'target' => '_blank'
                    ]); ?>
                    <?php echo Html::a(Icon::show('trash-o'), Url::toRoute(['/question-answer/delete', 'id' => $item['ans_id'], 'question_id' => $question_id]), [
                        'title' => Yii::t('cms', 'Delete'),
                        'class'=>'btn btn-primary btn-xs btn-app',
                        'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                        'data-method' => 'post',
                        'data-pjax' => 'w0',
                    ]); ?>
                </th>
            </tr>
        <?php } ?>
        </tbody>
    </table>
<?php } ?>

<script>
    $(document).on('click', '#ans_true', function () {
        var ques_id = $(this).data('ques_id');
        var ans_id = $(this).data('ans_id');
        var _csrf = $("meta[name='csrf-param']").attr('content');

        $.ajax({
            method: 'POST',
            data: {'_csrf' : _csrf, 'ques_id' : ques_id, 'ans_id' : ans_id},
            url: '<?php echo Url::toRoute(['/question-answer/update-ans-true']) ?>',
            success: function () {},
            error: function () {},
        });
    });
</script>
