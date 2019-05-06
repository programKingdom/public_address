<?php
namespace app\index\controller;
use app\common\controller\IndexBase;
class Video extends IndexBase
{
    /**
     * 视频详情页的展示
     * @return mixed
     */
    public function index()
    {
        return $this->fetch();
    }
    /*
     * 以下方法是视频列表页的显示
     */
    public function videoList()
    {
        $arr          = input('param.');
        $category_id  = $arr['category_id'];
        $videoSort    = model('video')->field('id,filename,title,sdescribe')->where('recommend',1)->where('is_line',1)-> where('category_id',$category_id)->paginate(5);
        $this->assign('videoSort',$videoSort);
        return $this->fetch();

    }
    /**
     * 以下方法是视频的的详情页
     */
    public function videoDetail()
    {
        $arr      = input('param.');
        $id       = $arr['id'];
        $result   = model('video')->where('id',$id)->find();
        $this->assign('result',$result);
        return $this->fetch();
    }
}