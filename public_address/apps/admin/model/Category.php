<?php

namespace app\admin\model;

use think\Model;
/**
 * 前台文章模型
 */
class Category extends Model
{

    /**
     * 显示分类;列表
     */
    public function showCategoryList($parent_id = 0,$target = [])
    {
        $ts = $this
            ->where('parent_id', 'eq', $parent_id)
            ->select();
        static $n = 1;
        foreach ($ts as $t) {
            $key                     =  $t->id;
            $target[$key]          = $t->toArray();
            $target[$t->id]['level'] = $n;
            $n++;
            $target = $this->showCategoryList($t->id, $target);
            $n--;
        }
        return $target;
    }
    /**
     * 显示左边栏详细信息
     */
    public function categoryName()
    {
       $result = model('category')->where('parent_id',0)->where('is_line',1)->select();
        return $result;
    }


}