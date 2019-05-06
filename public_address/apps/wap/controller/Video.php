<?php
namespace  app\wap\controller;
use  app\common\controller\WapBase;

class Video extends WapBase
{
    /**
     * 视频列表页的搭建
     */
    public function index()
    {
        $result   =  db('video')->where('recommend',1)->where('is_line',1)->field('title,filename,sdescribe,id')->paginate(3);
        $this->assign('result',$result);
        return $this->fetch();
    }

    /**
     *视频详情页的搭建
     */
    public function detail()
    {
            $arr     = input('param.');
            $id      = $arr['id'];
            $result  = db('video')->where('id',$id)->find();
            $this->assign('result',$result);
            return $this->fetch();
    }
}