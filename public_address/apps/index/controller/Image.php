<?php
namespace app\index\controller;
use app\common\controller\IndexBase;
class Image extends IndexBase
{
    /**
     * 图片详情页的展示
     * @return mixed
     */
    public function index()
    {
        return $this->fetch();
    }
    /**
     * 图片列表页的显示
     */
    public function imageList()
    {
        $arr          = input('param.');
        $category_id  = $arr['category_id'];
        $imageSort    = model('image')->alias('a')->join('imagefile b','a.id=b.image_id')->field('a.id,b.filename as filename,a.title,a.sdescribe')->where('recommend',1)->where('is_line',1)-> where('category_id',$category_id)->paginate(5);
        $this->assign('imageSort',$imageSort);
        return $this->fetch();
    }
    /**
     * 以下方法是图片的的详情页
     */
    public function imageDetail()
    {
        $arr      = input('param.');
        $id       = $arr['id'];
        $result   = model('image')->where('id',$id)->find();
        $filelist = model('imagefile')->where('image_id',$id)->paginate(5);
        $this->assign('filelist',$filelist);
        $this->assign('result',$result);
        return $this->fetch();
    }
}