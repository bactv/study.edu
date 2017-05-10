<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 10/05/2017
 * Time: 9:53 SA
 */
use yii\helpers\Html;
?>

<?php if (isset($lists) && count($lists) > 0) { ?>
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
        <thead>
            <tr>
                <th>ID</th>
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
                        $item['is_true'] == 1 => 'checked'
                    ]) ?>
                </td>
                <th>
                    <?php echo Html::a('Cập nhật', 'javascript:void(0)', []) ?>
                    <?php echo Html::a('Xóa', 'javascript:void(0)', []) ?>
                </th>
            </tr>
        <?php } ?>
        </tbody>
    </table>
<?php } ?>
