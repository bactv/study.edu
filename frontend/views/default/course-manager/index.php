<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 11/05/2017
 * Time: 11:52 CH
 */

use yii\helpers\Url;
use common\components\Utility;
use kartik\icons\Icon;
use common\components\AssetApp;
use frontend\models\LessonDocument;
use frontend\models\LessonQuiz;
use frontend\models\StudentLessonQuiz;
use frontend\models\Lesson;
use yii\widgets\Pjax;
use yii\grid\GridView;
use frontend\models\CourseType;
use frontend\models\Subject;
use yii\helpers\Html;
use yii\bootstrap\Alert;

Icon::map($this, Icon::FA);

\common\components\AssetApp::regCssFile('course_manager.css');

?>
<!-- Header -->
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h3 class="w3-text-teal"><b><?php echo Icon::show('list') ?> DANH SÁCH KHÓA HỌC</b></h3>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container" style="margin-bottom: 20px">
    <a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc/create'])?>" class="btn btn-info"><?php echo Icon::show('plus') ?> Tạo khóa học mới</a>
</div>

<div class="w3-container" style="margin-bottom: 20px">
    <a href="javascript:void(0)" onclick="toggle_create_course_tutorial()" style="color: brown;"><u><i>Hướng dẫn tạo khóa học</i></u></a>
    <div class="box_tutorial" style="margin-top: 10px;background: #fff;padding: 10px;display: none">
    <?php  echo \frontend\models\StaticPage::get_content('CREATE_COURSE_TUTORIAL') ?>
    </div>
</div>

<div class="w3-container">
    <?php Pjax::begin(['id' => 'admin-grid-view']);?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            [
                'class' => 'yii\grid\SerialColumn',
                'header' => 'STT',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'name',
                'label' => 'Khóa học',
                'format' => 'raw',
                'value' => function ($model) {
                    if ($model['approved'] == 1) {
                        return Html::a($model['name'], Url::toRoute(['/detail/' . Utility::rewrite($model['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $model['id'])]), ['target' => '_blank', 'style' => 'color: blue']);
                    }
                    return $model['name'];
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'deadline_register',
                'label' => 'Hạn đăng ký',
                'format' => 'raw',
                'value' => function ($model) {
                    return Utility::formatDataTime($model['deadline_register'], '-', '/', false);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'status',
                'label' => 'Trạng thái',
                'format' => 'raw',
                'value' => function ($model) {
                    return ($model['status'] == 1) ? '<span class="w3-text-blue">Công khai</span>' : '<span class="w3-text-red">Riêng tư</span>';
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'approved',
                'label' => 'Tình trạng phê duyệt',
                'format' => 'raw',
                'value' => function ($model) {
                    if($model['approved'] == 1) {
                        return "<span class='w3-text-green'>Đã phê duyệt</span>";
                    } else if ($model['approved'] == 0) {
                        return "<span class='w3-text-orange'>Đang xem xét</span>";
                    }
                    return "<span class='w3-text-red'>Đã từ chối phê duyệt</span>";
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'price',
                'label' => 'Học phí',
                'format' => 'raw',
                'value' => function ($model) {
                    return number_format($model['price']);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'course_type_id',
                'label' => 'Hình thức khóa học',
                'format' => 'raw',
                'value' => function ($model) {
                    return CourseType::getAttributeValue(['id' => $model['course_type_id']], 'name');
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'subject_id',
                'label' => 'Môn học',
                'format' => 'raw',
                'value' => function ($model) {
                    return Subject::getAttributeValue(['id' => $model['subject_id']], 'name');
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {request}',
                'header' => Yii::t('cms', '#'),
                'headerOptions' => ['style'=>'text-align: center;'],
                'contentOptions'=>['style'=>'text-align: center;'],
                'options' => ['width' => '120px'],
                'buttons' => [
                    'view' => function ($url, $model) {
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/view/', 'id' => $model['id']]);
                        return Html::a(Icon::show('info-circle'), $url, [
                            'title' => Yii::t('cms', 'View'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'update' => function ($url, $model) {
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/update/', 'id' => $model['id']]);
                        return Html::a(Icon::show('pencil-square-o'), $url, [
                            'title' => Yii::t('cms', 'Update'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'request' => function ($url, $model) {
                        if ($model['approved'] != 1) {
                            return Html::a(Icon::show('send-o'), 'javascript:void(0)', [
                                'title' => Yii::t('cms', 'Gửi yêu cầu xét duyệt'),
                                'class'=>'btn btn-primary btn-xs btn-app',
                                'data-pjax' => '0',
                                'onclick' => 'send_request(this)',
                                'data-course_id' => $model['id']
                            ]);
                        }
                        return '';
                    }
                ]
            ],
        ],
    ]); ?>
    <?php Pjax::end();?>
</div>

<script>
    function toggle_create_course_tutorial() {
        $(".box_tutorial").toggle();
    }
    function send_request(element) {
        BootstrapDialog.show({
            title: 'Gửi yêu cầu xét duyệt',
            message: 'Bạn có muốn gửi yêu cầu xét duyệt về khóa học này hay không?',
            buttons: [{
                label: '<?php echo Icon::show('send-o') ?> Gửi yêu cầu',
                cssClass: 'btn-success',
                action: function(dialog) {
                    var _csrf = $("meta[name='csrf-param']").attr('content');
                    var course_id = $(element).data('course_id');
                    $.ajax({
                        method: 'POST',
                        data: {'_csrf' : _csrf, 'sender_id' : '<?php echo Yii::$app->user->identity->getId() ?>', 'course_id': course_id},
                        url: '<?php echo Url::toRoute(['/notification/send-request-course']) ?>',
                        success: function () {
                            BootstrapDialog.show({
                                title: 'Thông báo',
                                message: 'Bạn đã gửi yêu cầu thành công. Chúng tôi sẽ xem xét và trả lời sớm cho bạn. Xin cảm ơn.'
                            });
                        },
                        error: function () {
                            BootstrapDialog.show({
                                title: 'Thông báo',
                                message: 'Hệ thống đang có lỗi. Vui lòng thử lại sau. Xin cảm ơn.'
                            });
                        }
                    });
                    dialog.close();
                }
            }, {
                label: '<?php echo Icon::show('close') ?> Hủy',
                cssClass: 'btn-warning',
                action: function(dialog) {
                    dialog.close();
                }
            }]
        });
        return false;
    }
</script>