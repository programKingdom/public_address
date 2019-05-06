<?php

namespace app\index\model;

use think\Model;

class Synopsis extends Model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = "updated_at";
    protected $createTime = "created_at";
}