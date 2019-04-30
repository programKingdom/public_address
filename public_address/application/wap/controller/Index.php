<?php
namespace  app\wap\controller;
use  app\common\controller\WapBase;

class Index extends WapBase
{
    /**
     * 手机端首页的搭建
     */
    public function index()
    {
        //视频的显示
        $videoRes  = db('video')->where('recommend',1)->where('is_line',1)->order('id desc')->limit(1)->find();
        //图片的显示
        $imageRes  = db('image')
            ->alias('a')
            ->join('imagefile b','a.id=b.image_id')
            ->field('a.title,b.filename,a.id')
            ->where('recommend',1)
            ->where('is_line',1)
            ->order('a.id desc')
            ->limit(3)
            ->select();
        //推荐文章的显示   仅限三条
        $articleRes  = db('article')->field('id,title,created_at,describe')->where('recommend',1)->where('is_line',1)->order('id desc')->limit(3)->select();
        $this->assign('articleRes',$articleRes);
        $this->assign('imageRes',$imageRes);
        $this->assign('videoRes',$videoRes);
        return $this->fetch();
    }
}