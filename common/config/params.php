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
    'web_url' => 'http://study.edu.vn/',
    'storage_url' => 'http://static.study.edu.vn/',

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
    'storage' => [
        'path' => dirname(dirname(__DIR__)) . '/storage/',
        'img.user' => [
            'path' => 'img.user/',
        ],
        'img.slide' => [
            'path' => 'img.slide/',
        ],
        'img.course' => [
            'path' => 'img.course/',
        ],
        'assets.course' => [
            'path' => 'assets.course/'
        ],
        'img.admin' => [
            'path' => 'img.admin/',
        ]
    ],
    'assets_path' => [
        'img.user' => 'http://static.study.edu.vn/img.user/',
        'img.slide' => 'http://static.study.edu.vn/img.slide/',
        'img.course' => 'http://static.study.edu.vn/img.course/',
        'assets.course' => 'http://static.study.edu.vn/assets.course/',
        'img.admin' => 'http://static.study.edu.vn/img.admin/',
    ],
    'banner_subject_course' => [
        'math' => '',
        'physical' => '',
        'chemistry' => '',
        'biology' => '',
        'geography' => '',
        'literature' => '',
        'english' => '',
    ]
];
