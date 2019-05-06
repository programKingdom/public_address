<?php
namespace app\common\controller;
use think\Controller;
class WapBase extends Controller
{
    /**
     * 初始化方法
     * 导航条信息页脚信息等  公共信息的展示
     */
    public function _initialize()
    {

    }
    public function _empty()
    {
        $this->display('Common:404');
    }


}