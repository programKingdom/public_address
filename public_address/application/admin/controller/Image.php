<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use app\admin\model\ImageCategory;
class Image extends AdminBase
{
    /**
     * 删除图片文件
     */
    public function deleteImageFile()
    {
        $tmpArr  = input('param.');
        $id      = $tmpArr['id'];
        $arr   = model('imagefile')->where('id',$id)->find();
        $state   = model('imagefile')->where('id',$id)->delete();
        $path = ROOT_PATH .'public/static/upload/article/'.$arr->filename;
        $path = str_replace('\\','/',$path);
        if(file_exists($path)){
            unlink($path);
        }
        if($state){
            echo 1;
        }else{
            echo false;
        }
    }
    /**
     * 执行编辑图片
     */
    public function doEditImage()
    {
        $arr     = input('param.');
        $files    = request()->file('image_file');
        if($files){
            $tmparr = [];
            foreach($files as $file)
            {
                $info = $file->validate(['size'=>1048576,'ext'=>'jpg,png,gif'])->move('./static/upload/image');
                if(!$info)
                {
                    $this->error('格式错误');
                }
                $newfilename = $info->getSaveName();
                $tmparr[] = $newfilename;
            }
           foreach($tmparr as $filename)
           {
               $filearr = [
                 'filename'=>$filename,
                   'image_id'=>$arr['id']
               ];
               $filestate = model('imagefile')->insert($filearr);
               if(!$filestate){
                   exit;
               }
           }
           ;
            $state = model('image')->update($arr);
            if($state ){
                $this->success('编辑成功',url('admin/image/admin'));
            }else
            {
                $this->error('编辑失败');
            }
            exit;
        }
        $state = model('image')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/image/admin'));
        }else
        {
            $this->error('编辑失败');
        }
    }
    /**
     * 执行图片添加
     */
    public function doAddImage()
    {
        $arr  =  input('param.');
        $files = request()->file('image_file');

        if($files){

            $id   =  model('image')->insertGetId($arr);
            $filearr = [];
            foreach($files as $file){
                $info  = $file->validate(['size'=>1048576,'ext'=>'jpg,png,gif'])->move('./static/upload/image');
                if(!$info)
                {
                    $this->error('格式错误');
                }
                $filename = $info->getSaveName();
                $filearr[] = $filename;

            }
            foreach($filearr as $v){
                $array = [
                    'filename'=>$v,
                    'image_id'=>$id
                ];
               $state =   model('imagefile')->insert($array);
            }
                if($state){
                    $this->success('添加成功',url('admin/image/admin'));
                }else{
                    $this->error('添加失败');
                }

        }else{
            $this->error('未添加图片');
        }


    }
    /**
     * 执行图片分类编辑
     */
    public function doEditCategory()
    {
        $arr   = input('param.');
        $state = model('image_category')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/image/adminCate'));
        }else{
            $this->error('编辑失败');
        }
    }
    /**
     *编辑图片分类
     */
    public function editCategory()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $result = model('image_category')->field('imagecategoryname,id')->where('id',$id)->find();
        $this->assign('result',$result);
        return $this->fetch();
    }
    /**
     * 图片分类删除
     */
    public function delCategory()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $parentstate = model('image_category')->where('parent_id',$id)->select();
        $directory   = model('image')->where('category_id',$id)->select();

        if($parentstate){
            $this->error('请先删除子类');
            exit;
        }
        if($directory){
            $this->error('请先删除此分类下的图片');
            exit;
        }
        $state = model('image_category')->where('id',$id)->delete();
        if($state){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    /**
     * 图片文件编辑
     */
    public  function editImage()
    {
        $arr  =  input('param.');
        $id   = $arr['id'];
        $res  = model('image')->field('title,id,sdescribe,author,content,category_id,is_line,recommend')->where('id',$id)->find();
        $imagelist = model('imagefile')->where('image_id',$id)->select();
        $this->assign('imagelist',$imagelist);
        $this->assign('res',$res);
        $this->getImagelist();
        return $this->fetch();
    }
    /**
     * 执行删除图片文件
     */
    public function delImage()
    {
        $arr  =  input('param.');
        $id   = $arr['id'];
        $res  = model('imagefile')->field('filename')->where('image_id',$id)->select();
        $state = model('image')->where('id',$id)->delete();
        if($res){
            foreach($res as $v){
                $path = ROOT_PATH .'public/static/upload/image/'.$v->filename;
                $path = str_replace('\\','/',$path);
                if(file_exists($path))
                {
                    unlink($path);
                }
            }
            $imagestate= model('imagefile')->where('image_id',$id)->delete();
            if($state&&$imagestate)
            {
                $this->success('删除成功');
            }else{
                $this->error('删除失败');
            }
            exit;
        }
        if($state)
        {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    /**
     * 执行图片分类添加
     */
    public function addimagecategory()
    {
        $arr    = input('param.');
        $state  = model('image_category')->save($arr);
        if($state)
        {
            $this->success('添加成功',url('admin/image/adminCate'));
        }else{
            $this->error('添加失败');
        }
    }
    /**
     * 获取图片信息
     */
    private function getImage()
    {
        $imagename = model('imagefile')->field('id,filename,image_id')->select();
        $this->assign('imagename',$imagename);
    }
    /**
     * image管理
     */
    public function admin()
    {
        $this->getImage();
        $result = model('image')->field('title,id,category_id,author,readnum,commentnum,created_at')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch();
    }

    /**
     * 图片分类列表获取
     */
    private function getImagelist()
    {
        $imagemodel =  new ImageCategory;
        $list       = $imagemodel->getImageCategoryList();
        $this->assign('list',$list);
    }
    /**
     * image分类
     */
    public function cate()
    {
        $this->getImagelist();
        return $this->fetch();
    }
    /**
     * 图片分类管理
     */
    public function adminCate()
    {
        $this->getImagelist();
        return $this->fetch();
    }
    /**
     * 发布image
     */
    public function addImage()
    {
        $this->getImagelist();
        return $this->fetch();
    }
}