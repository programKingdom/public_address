<?php

namespace app\admin\controller;

// 引入控制器基类
use app\common\controller\AdminBase;
use think\Session;
use think\validate;

/**
 * 前台用户控制器
 */
class Admin extends AdminBase
{
    /**
     * 执行编辑用户
     */
    public function doEdit()
    {
        $arr = input('param.');
        $state = model('admin')->update($arr);
        if($state)
        {
            $this->success('编辑成功',url('admin/admin/index'));
        }else{
            $this->error('编辑失败');
        }
    }
    /**
     * 编辑用户
     */
    public function edit()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $result = model('admin')->where('id',$id)->find();

        $this->assign('result',$result);
        // 3. 调用模板
        return $this->fetch();
    }
    /**
     * 删除用户
     */
    public function delete()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $state = model('admin')->where('id',$id)->delete();
        if($state){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }

    }
    /**
     * 管理员基本设置
     */
    public function detail()
    {
        $id = session('admin');
        $result = model('admin')->where('id',$id)->find();

        $this->assign('result',$result);
        // 3. 调用模板
        return $this->fetch();
    }
    /**
     * 执行添加管理员
     */
    public function doAddAdmin()
    {
        $arr = input('param.');

        $pass1= md5($arr['repassword']);
        $pass2= md5($arr['password']);
        if($pass1!= $pass2){
            $this->error('两次密码不一致');
            exit;
        }
        $tmpstate = model('admin')->where('username',$arr['username'])->find();
        if($tmpstate){
            $this->error('用户名已注册');
            exit;
        }
        unset($arr['repassword']);
        unset($arr['password']);
        $arr['password'] = $pass2;
        $arr['created_at'] = time();
        $state = model('admin')->insert($arr);
        if($state){
            $this->success('添加成功',url('admin/admin/index'));
        }else{
            $this->error('添加失败');
        }


    }
    /**
     * 添加管理员
     */
    public function addAdmin()
    {
        // 3. 调用模板
        return $this->fetch();
    }
    /**
     * 管理员列表
     *
     * 访问路径: admin/admin/index
     */
    public function index()
    {
        # 1. 查询数据
        $list = db('admin')
            ->field('id,username,nick_name,created_at')
            ->order('created_at DESC')
            ->select();
        // 3. 调用模板
        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     * 管理员退出
     */
    public function logout()
    {
        # 删除session中用户信息
        // Session::delete('user');
        session('admin', null);

        // 页面跳转
        $this->redirect(url('admin/admin/index'));
    }
    /**
     * 执行编辑基本信息
     */
    public function doDetail()
    {
        $arr = input('param.');
        $pass1= md5($arr['repassword']);
        $pass2= md5($arr['password']);
        if($pass1!= $pass2){
            $this->error('两次密码不一致');
            exit;
        }
        unset($arr['repassword']);
        unset($arr['password']);
        $arr['password'] = $pass2;
        $arr['updated_at'] = time();
        $state = model('admin')->update($arr);
        if($state){
            $this->success('修改成功',url('admin/admin/index'));
        }else{
            $this->error('修改失败');
        }
    }
}
