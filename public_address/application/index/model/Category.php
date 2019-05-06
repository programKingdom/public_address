<?php

namespace app\index\model;

use think\Model;
/**
 * 前台文章模型
 */
class Category extends Model
{
    public function showPublic()
    {
        $tmpcategorylistone =  model('category')->where('parent_id',0)->where('showfrontend',1)->select();
        $tmpstr = '';
        foreach($tmpcategorylistone as $v)
        {
            $tmpcategorylisttow =  model('category')->where('parent_id',$v->id)->where('showfrontend',1)->select();
            $tmpstr .= '<li><a href="#">'.$v->category_name.'</a><div class="menu_level"><div class="menu_level_con"><ul class="menu_nav">';
            foreach($tmpcategorylisttow as $v2)
            {
                $tmpstr .= '<li><a href="'.$v2->tmpstr.'">'.$v2->category_name.'</a></li>';
            }
            $tmpstr .= '</ul></div></div> </li>';
        }
        return $tmpstr;
    }

}