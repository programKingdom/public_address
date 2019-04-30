<?php

namespace app\index\model;

use think\Model;

class File extends Model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = "updated_at";
    protected $createTime = "created_at";
}