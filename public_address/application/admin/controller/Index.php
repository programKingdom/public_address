<?php
namespace app\admin\controller;

use think\Db;
use think\Controller;
use app\admin\model\Category as modelcategory;
class Index extends Controller
{
    /**
     * 初始化操作
     */
    public function _initialize()
    {
        /**
         * 左边栏的呈现
         */
        $mcate            = new modelcategory;
        $companyList      = $mcate->categoryName();
        $this->assign('companyList',$companyList);

    }
    /**
     * 管理员登录页面
     */
    public function index()
    {
        return $this->fetch();
    }
    /**
     *管理员登录
     */
    public function dologin()
    {
        $tmpArr = input('param.');
        $captcha = $tmpArr['captcha'];
        unset($tmpArr['captcha']);
        if(!captcha_check($captcha)){
           $this->error('验证码错误',url('admin/index/index'));
        };
        $res = model('admin')->where('username','eq',$tmpArr['username'])->where('password','eq',md5($tmpArr['password']))->find();

        if($res){
            session('admin',$res->id);session('adminname',$res->username);
            $this->success('登录成功!',url('admin/index/addHome'));
        }else{
            $this->error('登录失败',url('admin/index/index'));
        }

    }
    /**
     * 添加内容 主页面
     */
    public  function addHome()
    {
        $image = model('image')->order('id desc')->limit(1)->find();
        $article = model('article')->order('id desc')->limit(1)->find();
        $voideo = model('video')->order('id desc')->limit(1)->find();
        if(isset($image)){
            $imagefile = model('imagefile')->where('image_id',$image->id)->order('id desc')->limit(1)->find();
            $this->assign('image', $image);}
        if(isset($imagefile)){ $this->assign('imagefile',$imagefile);}
        if(isset($article)){ $this->assign('article',$article);}
        if(isset($voideo)){$this->assign('video',$voideo);}
        return $this->fetch();
    }
}