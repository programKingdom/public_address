<?php

namespace app\admin\model;

use think\Model;

class Image extends Model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = "updated_at";
    protected $createTime = "created_at";
}