<?php
namespace  app\wap\controller;
use  app\common\controller\WapBase;

class Article extends WapBase
{
    /***
     * 新闻列表页的展示
     * @return mixed
     */
    public function index()
    {
        $result   = db('article')->where('recommend',1)->where('is_line',1)->order('id desc')->paginate(3);
        $this->assign('result',$result);
        return $this->fetch();
    }
    /***
     * 新闻详情页的展示
     */
    public function detail()
    {
            $arr       = input('param.');
            $id        = $arr['id'];
            $result    = db('article')
                ->where('id',$id)
                ->find();
            $imagefile = db('articlefile')->where('article_id',$id)->select();
            if($imagefile)
            {
                $this->assign('imagefile',$imagefile);
            }
        $this->assign('result',$result);
        return $this->fetch();
    }
}