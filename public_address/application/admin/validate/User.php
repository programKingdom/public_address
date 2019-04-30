<?php
namespace  app\index\validate;
use think\Validate;
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2019/2/20
 * Time: 16:53
 */
//前台用户验证器
class User extends Validate
{
    protected $rule = [

            //字段名=>规则1|规则2|...,
            'username'=>'require|length:2,100|unique:user',
            'password'=>'require|min:6',
            'repassword'=>'require|confirm:password'


    ];
    protected $message = [
            //报错消息   字段一.规则1=>'消息1',...
            'username.require'=>'用户名不能为空',
            'username.length'=>'用户名长度非法(2,100)',
            'username.unique'=>'用户名已被占用,请选择别的用户名',
            'password.require'=>'密码不能为空',
            'password.min'=>'密码不足六位',
            'repassword.require'=>'密码不能为空',
            'repassword.confirm'=>'两次密码一致!'
    ];
}