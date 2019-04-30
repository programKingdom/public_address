<?php
namespace app\index\controller;
use app\common\controller\IndexBase;
class Article extends IndexBase
{
    /**
     * 文章详情页
     * @return mixed
     */
    public function index()
    {
        return $this->fetch();
    }

    /**
     *文章列表页
     */
    public function articleList()
    {
        $arr          = input('param.');
        $category_id  = $arr['category_id'];
        $articleSort  = model('article')->field('id,describe,content,title,author')->where('category_id',$category_id)->paginate();
        $this->assign('articleSort',$articleSort);
        return $this->fetch();
    }
    /**
     * 文章详情页的展示
     */
    public function articleDetail()
    {
        $arr           = input('param.');
        $id            = $arr['id'];
        $articleDetail = model('article')->where('id',$id)->find();
        $articleFile   = model('articlefile')->where('article_id',$id)->select();
        if($articleFile){
            $this->assign('articleFile',$articleFile);
        }
        $this->assign('articleDetail',$articleDetail);
        return $this->fetch();
    }
}