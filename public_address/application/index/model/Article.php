<?php

namespace app\index\model;

use think\Model;

/**
 * 前台文章模型
 */
class Article extends Model
{
    //查询置顶作者的文章
    // 时间字段自动完成
    protected $autoWriteTimestamp = true;
    protected $updateTime         = "updated_at";
    protected $createTime         = "created_at";

}
