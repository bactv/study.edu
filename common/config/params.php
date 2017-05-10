<?php
return [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'user.passwordResetTokenExpire' => 3600,
    'apps'=> ['backend', 'frontend'],
    'ftp' => [
        'ftp_server' => 'static.study.edu.vn',
        'ftp_user_name' => 'bactv',
        'ftp_user_pass' => '123456'
    ],
    'api' => [
        'charging' => [
            'viettel' => 'http://api.viettel.vn/api/controllers/ApiContoller.php/action_charge'
        ]
    ],
    'key_encrypt' => 'bactv',
    'number_free_lesson' => 2,
    'cms_url' => 'http://cms.study.edu.vn/',
    'cms_teacher_url' => 'http://cms-teacher.study.edu.vn/',
    'web_url' => 'http://study.edu.vn/',
    'storage_url' => 'http://static.study.edu.vn/',

    'img_url' => [
        'admin_avatar' => [
            'folder' => 'admin_avatar',
        ],
        'user_avatar' => [
            'folder' => 'user_avatar',
        ],
        'slideshow' => [
            'folder' => 'slideshow',
        ],
    ],
    'asset_course' => [
        'folder' => 'asset_course',
    ],
    'telco_types' => ['viettel', 'mobifone', 'vinaphone', 'vietnamobile'],
    'charge_code_status' => [
        'viettel' => [
            206 => 'Không phải nhà mạng Viettel',
            204 => 'Dữ liệu bạn nhập không đủ',
            200 => 'Chúc mừng, quá trình nạp tiền thành công. Tài khoản của bạn được cộng thêm <b><i>%s</i></b> VNĐ',
            404 => 'Mã thẻ nạp không đúng hoặc đã được sử dụng.'
        ]
    ],
    'transaction_action' => [
        'CHARGE_MONEY' => 'Nạp tiền vào tài khoản'
    ],
];
