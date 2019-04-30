<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/19
 * Time: 12:37
 */
namespace app\common\controller;
use think\Controller;
class IndexBase extends Controller
{
    /**
     * 初始化方法
     * 导航条信息页脚信息等  公共信息的展示
     */
   public function _initialize()
   {
       //显示关于公司分类信息
       $synopsisCategory = model('category')->where('parent_id',0)->where('is_line',1)->select();
       $this->assign('synopsisCategory',$synopsisCategory);
       //显示关于视频的分类信息
       $videoCategory    = model('video_category')->where('parent_id',0)->where('is_line',1)->select();
       $this->assign('videoCategory',$videoCategory);
       //显示关于图片的分类信息
       $imageCategory    = model('image_category')->where('parent_id',0) ->where('is_line',1)->select();
       $this->assign('imageCategory',$imageCategory);
       //显示关于文章的分类信息
       $imageCategory    = model('article_category')->where('parent_id',0) ->where('is_line',1)->select();
       $this->assign('articleCategory',$imageCategory);

   }
    public function _empty()
    {
        $this->display('Common:404');
    }


}