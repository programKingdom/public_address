<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use app\admin\model\Category as modelcategory;
class Category extends AdminBase
{

    /**
     * 执行编辑分类
     */
    public function doEdit()
    {
        $arr = input('param.');
        $id = $arr['id'];
        unset($arr['id']);
        $res = model('category')->where('id',$id)->update($arr);
        if($res)
        {
            $this->success('编辑成功',url('admin/category/admin'));
        }else
        {
            $this->error('编辑失败',url('admin/category/admin'));
        }

    }
    /**
     * 删除分类
     */
    public function delCategory()
    {
        $arr       = input('param.');
        $id        = $arr['id'];
        $res       = model('category')->where('parent_id',$id)->select();
        $directory = model('synopsis')->where('category_id',$id)->select();
        if($directory)
        {
            $this->error('清先清除分类下的信息');
            exit;
        }
        if($res){
           $this->error('清先清除子类',url('admin/category/admin'));
        }else{
            $result        = model('category')->where('id',$id)->delete();
            $synopsisState = model('synopsis')->where('category_id',$id)->delete();
            if($result&&$synopsisState){
                $this->success('删除成功',url('admin/category/admin'));
            }else{
                $this->error('删除失败',url('admin/category/admin'));
            }
        }
    }
    /**
     * 编辑分类
     */
    public function edit()
    {
        $arr= input('param.');
        $id = $arr['id'];
        $mcate = new modelcategory;
        $list  =  $mcate->showCategoryList();
        $result = model('category')->where('id',$id)->find();
        $this->assign('list',$list);
        $this->assign('result',$result);
        return $this->fetch();

    }

    /**
     *管理
     */
    public function admin()
    {
        $mcate = new modelcategory;
       $list  =  $mcate->showCategoryList();
        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     *添加分类页面
     */
    public function addCate()
    {
        $mcate = new modelcategory;
        $list  =  $mcate->showCategoryList();

        $this->assign('list',$list);
        return $this->fetch();
    }
    /**
     * 执行添加分类页面
     */
    public function doAddCate()
    {
        $arr = input('post.');
        $res = model('category')->save($arr);
        if($res == 1)
        {
            $this->success('添加成功',url('admin/category/admin'));
        }else{
            $this->error('添加失败',url('admin/category/addCate'));
        }
    }
}