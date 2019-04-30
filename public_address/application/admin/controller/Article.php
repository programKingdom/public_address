<?php

namespace app\admin\controller;

use app\admin\model\ArticleCategory;
use app\common\controller\AdminBase;

class article extends AdminBase
{

    /**
     * 删除文章中的插入图片
     */
    public function deleteArticleFile()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $result  = model('articlefile')->where('id',$id)->find();
        $path    = ROOT_PATH.'public/static/upload/article/'.$result->filename;
        $path    = str_replace('\\','/',$path);
        if(file_exists($path)){
            unlink($path);
        };
        $state   = model('articlefile')->where('id',$id)->delete();
        if($state){
            echo 1;
        }else{
            echo false;
        }
    }
    /**
 * article文件编辑
 */
    public  function editArticle()
    {
        $arr  =  input('param.');
        $id   = $arr['id'];
        $res  = model('article')->field('title,id,describe,author,content,category_id,is_line,recommend')->where('id',$id)->find();

        $articlelist = model('articlefile')->where('article_id',$id)->select();
        if($articlelist){
            $this->assign('articlelist',$articlelist);
        }
        $this->assign('res',$res);
        $modelcategory = new articleCategory;
        $list          = $modelcategory->getArticleList();
        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     * 执行删除article文件
     */
    public function delArticle()
    {
        $arr  =  input('param.');
        $id   = $arr['id'];
        $res  = model('articlefile')->field('filename')->where('article_id',$id)->select();
        $state = model('article')->where('id',$id)->delete();
        if($res){
            foreach($res as $v){
                $path = ROOT_PATH .'public/static/upload/article/'.$v->filename;
                $path = str_replace('\\','/',$path);
                if(file_exists($path))
                {
                    unlink($path);
                }
            }
            $articlestate= model('articlefile')->where('article_id',$id)->delete();
            if($state&&$articlestate)
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
     * 执行编辑article
     */
    public function doEditArticle()
    {
        $arr     = input('param.');
        $files    = request()->file('article_file');
        if($files){
            $filearr = [];
            foreach($files as $file)
            {
                $info = $file->validate(['size'=>1048576,'ext'=>'jpg,png,gif'])->move('./static/upload/article');
                if(!$info)
                {
                    $this->error('格式错误');
                }
                $newfilename = $info->getSaveName();
                $filearr[]   = $newfilename;
            }
            foreach($filearr as $filename)
            {
                $articleFileArr = [
                    'filename'=>$filename,
                    'article_id'=>$arr['id']
                ];
                $filestate = model('articlefile')->insert($articleFileArr);
            }
            $state = model('article')->update($arr);
            if($state){
                $this->success('编辑成功',url('admin/article/admin'));
            }else
            {
                $this->error('编辑失败');
            }
            exit;
        }

        $state = model('article')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/article/admin'));
        }else
        {
            $this->error('编辑失败');
        }
    }
    /**
     * 获取articlearticle信息
     */
    private function getarticle()
    {
        $articlename = model('articlefile')->field('id,filename,article_id')->select();
        $this->assign('articlename',$articlename);
    }
    /**
     * article管理
     */
    public function admin()
    {
        $this->getarticle();
        $result = model('article')->field('title,id,category_id,author,readnum,commentnum,created_at')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch();
    }

    /**
     * article分类
     */
    public function cate()
    {
        $modelcategory = new articleCategory;
        $list          = $modelcategory->getarticleList();
        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     * 执行添加article分类
     */
    public function doAddCate()
    {
        $arr   = input('param.');
        $state = model('article_category')->save($arr);
        if($state){
            $this->success('添加成功');
        }else{
            $this->error('添加失败');
        }
    }
    /**
     * 发布article
     */
    public function addArticle()
    {
        $modelcategory = new articleCategory;
        $list          = $modelcategory->getarticleList();
        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     * 执行article发布
     */
    public function doAddArticle()
    {
        $arr  =  input('param.');
        $files = request()->file('article_file');
        if($files){

            $id   =  model('article')->insertGetId($arr);
            if(isset($id)){
                $filearr = [];
                foreach($files as $file){
                    $info  = $file->validate(['size'=>1048576,'ext'=>'jpg,png,gif'])->move('./static/upload/article');
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
                        'article_id'=>$id
                    ];
                    $state =   model('articlefile')->insert($array);
                }
                if($state){
                    $this->success('添加成功',url('admin/article/admin'));

                }else{
                    $this->error('添加失败');

                }
                exit;
            }

        }
        $state =  model('article')->insert($arr);
        if($state){
            $this->success('添加成功',url('admin/article/admin'));
        }else{
            $this->error('添加失败');
        }

    }
    /**
     * 分类管理
     */
    public function adminCate()
    {
        $modelcategory = new articleCategory;
        $list          = $modelcategory->getarticleList();
        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     * 删除分类
     */
    public function delCategory()
    {
        $arr       = input('param.');
        $id        = $arr['id'];
        $directory = model('article')->where('category_id',$id)->select();
        if($directory)
        {
            $this->error('请先删除此分类下的文章');
            exit;
        }
        $parentstate = model('article_category')->where('parent_id',$id)->select();
        if($parentstate){
            $this->error('请先删除子类');
            exit;
        }
        $state = model('article_category')->where('id',$id)->delete();
        if($state){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    /**
     * 编辑分类
     */
    public function editCategory()
    {
        $arr = input('param.');
        $id  = $arr['id'];
        $result = model('article_category')->field('articlecategoryname,id')->where('id',$id)->find();
        $this->assign('result',$result);
        return $this->fetch();
    }
    /**
     * 确认编辑分类
     */
    public function doEditCategory()
    {
        $arr   = input('param.');
        $state = model('article_category')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/article/adminCate'));
        }else{
            $this->error('编辑失败');
        }
    }
}


