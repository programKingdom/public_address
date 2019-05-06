<?php
namespace  app\wap\controller;
use  app\common\controller\WapBase;

class Recruit   extends WapBase
{
    /**
     * 招聘信息首页的显示
     */
    public function index()
    {
        $result =  db('recruit')->where('is_line',1)->paginate(3);
        $this->assign('result',$result);
        return $this->fetch();
    }
}