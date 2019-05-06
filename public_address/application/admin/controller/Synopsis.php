<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
class Synopsis extends AdminBase
{
    /**
     * 公司文件操作
     */
    public function editsynopsisfile()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $res   =  model('synopsisfile')->where('id',$id)->find();
        $state =  model('synopsisfile')->where('id',$id)->delete();

        $path  = ROOT_PATH.'public/static/upload/synopsis/'.$res->filename;
        $path  = str_replace('\\','/',$path);
        if(isset($path))
        {
            unlink($path);
        }
        if(!is_null($state)){
            echo 1;
        }else{
            exit;
        }


    }
    /**
     * 公司信息更新操作
     */
    public function updatesynopsis()
    {
        $arr         =  input('param.');
        $files        =  request()->file('file_name');

        if ($files)
        {
            $filenames = [];
            foreach($files as $file){
                $info      = $file->move('./static/upload/synopsis');
                $filed = $info->getSaveName();
                $filenames[] = $filed;
            }
            foreach($filenames as $filename){
                $filearr  = [
                    'filename'=>$filename,
                    'synopsis_id'=>$arr['id']
                ];
                $synopsisfilestate =  model('synopsisfile')->insert($filearr);
                if(!$synopsisfilestate)
                {
                    $this->error('更新失败');
                    exit;
                }
            }
            $state       = model('synopsis')->update($arr);
            if($state){
                $this->success('更新成功');
            }else{
                $this->error('更新失败');
            }
            exit;
        }
        $state       = model('synopsis')->update($arr);
        if($state){
            $this->success('更新成功');
        }else{
            $this->error('更新失败');
        }

    }
    /**
     * 公司信息展示模板
     */
    private function synopsismodel ()
    {
        $arr             = input('param.');
        $categroy_id     = $arr['id'];
        $result          = model('synopsis')->where('category_id',$categroy_id)->limit(1)->find();
        $file            = model('synopsisfile')->where('synopsis_id',$result->id)->select();
        $this->assign('file',$file);
        $this->assign('result',$result);
    }
    /**
    * 公司简介
    */
    public function company()
    {
        $this->synopsismodel();
        return $this->fetch('synopsis/modeled');
    }
}