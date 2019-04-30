<?php
namespace app\admin\model;

use think\Model;
use app\admin\model\Category;
class VideoCategory extends Model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = "updated_at";
    protected $createTime = "created_at";

    /**
     * 获取分类列表
     */
    public function getVideoCategoryList($parent_id=0,$target=[])
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
            $target = $this->getVideoCategoryList($t->id, $target);
            $n--;
        }
        return $target;
    }
}