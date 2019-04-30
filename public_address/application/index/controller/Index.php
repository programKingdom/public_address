<?php
namespace app\index\controller;
use app\common\controller\IndexBase;
class Index extends IndexBase
{
    /**
     * 前端首页的展示
     * @return mixed
     */
    public function index()
    {
        //推荐的视频列表的显示
        $videoTitleList = model('video')->field('id,title,filename')->where('recommend',1)->where('is_line',1)->order('id desc')->select();
        $videoDetailOne = model('video')->field('id,title,filename')->where('recommend',1)->where('is_line',1)->order('id desc')->limit(1)->find();
        $this->assign('videoTitleList',$videoTitleList);
        $this->assign('videoDetailOne',$videoDetailOne);
        //推荐的文章列表的显示
        $articleTitleList = model('article')->field('title,describe,author,id')->where('recommend',1)->where('is_line',1)->select();
        $this->assign('articleTitleList',$articleTitleList);
        //获取推荐的图片列表显示
        $imageRecommendList = model('image')->alias('a')->join('imagefile b','a.id=b.image_id')->field('a.id,a.title,a.sdescribe,a.author,b.filename as name')->select();
        $this->assign('imageRecommendList',$imageRecommendList);
        //获取公司简介的基本信息进行显示
        $detailSynopsisOne = model('synopsis')->alias('a')->join('synopsisfile b','a.id=b.synopsis_id')->field('a.id,a.stitle,a.scontent,a.sdescribe,b.filename as name')->where('stitle','公司简介')->limit(1)->find();
        $this->assign('detailSynopsisOne',$detailSynopsisOne);
        return $this->fetch();
    }
}