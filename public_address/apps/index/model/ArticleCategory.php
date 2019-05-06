<?php
namespace app\index\model;

use think\Model;

class ArticleCategory extends Model
{

    // 时间字段自动完成
    protected $autoWriteTimestamp = true;
    protected $updateTime         = "updated_at";
    protected $createTime         = "created_at";

    /**
     * 分类列表的获取
     */
    public  function getArticleList($parent_id=0,$target=[])
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
            $target = $this->getArticleList($t->id, $target);
            $n--;
        }
        return $target;
    }

}
