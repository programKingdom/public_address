<?php
namespace  app\wap\controller;
use  app\common\controller\WapBase;

class Synopsis extends WapBase
{
    /**
     * 公司信息端的展示
     */
    public function index()
    {
        $result    =  db('synopsis')->
        alias('a')->
        join('synopsisfile b','a.id=b.synopsis_id')->
        field('a.id,a.stitle,b.filename')->
        where('recommend',1)->
        where('is_line',1)->
        order('id desc')->
        group('category_id')->
        paginate(6);
        $this->assign('result',$result);
        return $this->fetch();
    }

    /**
     * 内部活动的页面显示
     */
    public function activity()
    {

        return $this->fetch();
    }

    /**
     * 公司信息详情的显示
     */
    public function  detail()
    {
        $arr    = input('param.');
        $id     = $arr['id'];
        $result = db('synopsis')->
        alias('a')->
        join('synopsisfile b','a.id=b.synopsis_id')->
        field('a.stitle,a.sdescribe,a.scontent,b.filename,a.created_at')->
        where('a.id',$id)->
        find();
        $this->assign('result',$result);
        return $this->fetch();
    }
}