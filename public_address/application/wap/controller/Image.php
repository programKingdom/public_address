<?php
namespace  app\wap\controller;
use  app\common\controller\WapBase;

class Image extends WapBase
{

    /**
     * 图片列表页的显示
     * @return mixed
     */
    public function index()
    {
        $result = db('image')
            ->alias('a')
            ->join('imagefile b','a.id=b.image_id')
            ->field('a.title,a.sdescribe,a.id,b.filename')
            ->where('recommend',1)
            ->where('is_line',1)
            ->order('id desc')
            ->group('a.id')
            ->paginate(3);
        $this->assign('result',$result);
        return $this->fetch();
    }

    /**
     * 图片详情页
     */
    public function detail()
    {
        $arr    = input('param.');
        $id     = $arr['id'];
        $result = db('image')
            ->alias('a')
            ->join('imagefile b','a.id=b.image_id')
            ->field('a.title,a.sdescribe,b.filename')
            ->where('a.id',$id)
            ->paginate(6);
        $this->assign('result',$result);
        return $this->fetch();
    }
}