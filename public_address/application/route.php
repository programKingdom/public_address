<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Route;
    //路由表达式    地址表达式  请求方法
Route::rule('/','index/index/index','get');
Route::get('user/login','index/user/login');
Route::post('user/doLogin','index/user/doLogin');
return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],
    //方式一:直接声明路由表达式
    //    地址表达式
    //
    //article  index/article/index
//    'article/:id'=>[
//        'index/article/detail',[
//            'method'=>'get'
//        ],
//        [
//            ':id'=>'\d+'
//        ]
//    ],
//
//            'article'=>[
//                'index/article/index',[
//                    'method'=>'get'
//                ],
//            ],
    //方式二   路由分组
    '[article]'=>[
        'id'=>[
            'index/article/detail',[
                'method'=>'get'
            ],[
                ':id'=>'\d+'
            ]
        ]
        ,
        '/' =>[
            'index/article/index',[
                'method'=>'get'
               ],
        ]
    ]

];
