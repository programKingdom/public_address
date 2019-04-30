<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use app\admin\model\VideoCategory;
class Video extends AdminBase
{
    /**
     * 视频分类删除
     */
    public function delCategory()
    {
        $arr         = input('param.');
        $id          = $arr['id'];
        $parentstate = model('video_category')->where('parent_id',$id)->select();
        $directory   = model('video')->where('category_id',$id)->select();
        if($directory){
            $this->error('请先删除此分类下的视频');
            exit;
        }
        if($parentstate){
            $this->error('请先删除子类');
            exit;
        }
        $state = model('video_category')->where('id',$id)->delete();
        if($state){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    /**
     * 执行视频分类编辑
     */
    public function doEditCategory()
    {
        $arr   = input('param.');
        $state = model('video_category')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/video/adminCate'));
        }else{
            $this->error('编辑失败');
        }
    }
    /**
     *编辑视频分类
     */
    public function editCategory()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $result = model('video_category')->field('videocategoryname,id')->where('id',$id)->find();
        $this->assign('result',$result);
        return $this->fetch();
    }
    /**
     * 执行编辑视频文件
     */
    public function doEditVideo()
    {
        $arr     = input('param.');
        $file    = request()->file('video_file');
        if($file){
            $path = ROOT_PATH .'public/static/upload/video/'.$arr['filename'];
            $path = str_replace('\\','/',$path);
            unlink($path);
            unset($arr['filename']);
            $info = $file->validate(['size'=>7340023,'ext'=>'mp4'])->move('./static/upload/video');
            if(!$info)
            {
                $this->error('格式错误');
            }
            $newfilename = $info->getSaveName();
            $arr['filename'] = $newfilename;
            $state = model('video')->update($arr);
            if($state){
                $this->success('编辑成功',url('admin/video/admin'));
            }else
            {
                $this->error('编辑失败');
            }
            exit;
        }
        unset($arr['filename']);
        $state = model('video')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/video/admin'));
        }else
        {
            $this->error('编辑失败');
        }

    }
    /**
     * 视频文件编辑
     */
    public  function editVideo()
    {
        $arr  =  input('param.');
        $id   = $arr['id'];
        $res  = model('video')->field('filename,title,id,sdescribe,author,content,category_id,is_line,recommend')->where('id',$id)->find();
        $this->assign('res',$res);
        $this->getlist();
        return $this->fetch();
    }
    /**
     * 执行删除视频文件
     */
    public function delVideo()
    {
        $arr  =  input('param.');
        $id   = $arr['id'];
        $res  = model('video')->field('filename')->where('id',$id)->find();
        $path = ROOT_PATH .'public/static/upload/video/'.$res->filename;
        $path = str_replace('\\','/',$path);
        if(file_exists($path))
        {
            unlink($path);
        }
        $state = model('video')->where('id',$id)->delete();
        if($state)
        {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

    /**
     *执行添加视频
     */
    public function doAddVideo()
    {
        $arr             = input('param.');
        $file            = request()->file('video_file');
        $info            = $file->validate(['size'=>7340023,'ext'=>'mp4'])->move('./static/upload/video');
        if(!$info)
        {
            $this->error('格式错误');
        }
        $filename        = $info->getSaveName();
        $arr['filename'] = $filename;
        $state           = model('video')->save($arr);
        if($state){
            $this->success('添加成功',url('admin/video/admin'));
        }else{
            $this->error('添加失败');
        }

    }

    /**
     * 执行添加视频分类
     */
    public function addvideocategory()
    {
        $arr   = input('param.');
        $state = model('video_category')->save($arr);
        if($state){
            $this->success('添加成功',url('admin/video/adminCate'));
        }else{
            $this->error('添加失败');
        }

    }
    /**
     * 分类列表的获取
     */
    private function getlist()
    {
        $category = new VideoCategory;
        $list     = $category->getVideoCategoryList();
        $this->assign('list',$list);
    }
    /**
     * video 分类管理
     */
    public function adminCate()
    {
        $this->getlist();
        return $this->fetch();
    }
    /**
     * video管理
     */
    public function admin()
    {
        $result =  model('video')
            ->alias('a')
            ->join('video_category w','a.category_id = w.id')
            ->field('a.title,a.id,a.filename,w.videocategoryname as name,a.author,a.readnum,a.commentnum,a.created_at')
            ->paginate(5);
        $this->assign('result',$result);
        return $this->fetch();
    }
    /**
     * video分类
     */
    public function cate()
    {
        $this->getlist();
        return $this->fetch();
    }
    /**
     * 发布video
     */
    public function addVideo()
    {
        $this->getlist();
        return $this->fetch();
    }
}