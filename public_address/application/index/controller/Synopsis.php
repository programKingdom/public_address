<?php
namespace app\index\controller;
use app\common\controller\IndexBase;
class Synopsis extends IndexBase
{
    /**
     *
     */
    public function index()
    {
        return $this->fetch();
    }

    /**
     *公司信息的详情页
     */
    public function synopsisDetail()
    {
        $arr            = input('param.');
        $category_id    = $arr['category_id'];
        $synopsisDetail =
            model('synopsis')
            ->alias('a')
            ->join('synopsisfile b','a.id=b.synopsis_id')
            ->field('a.id,a.stitle,a.sdescribe,a.scontent,b.filename as name')
            ->where('category_id',$category_id)
            ->where('is_line',1)
            ->where('recommend',1)
            ->order('id desc')
            ->limit(1)
            ->find();
        $this->assign('synopsisDetail',$synopsisDetail);
        return $this->fetch();
    }

}