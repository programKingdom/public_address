<?php
namespace app\index\model;

use think\Model;
class ImageCategory extends Model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = "updated_at";
    protected $createTime = "created_at";

    /**
     * 获取分类列表
     */
    public function getImageCategoryList($parent_id=0,$target=[])
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
            $target = $this->getImageCategoryList($t->id, $target);
            $n--;
        }
        return $target;
    }
}