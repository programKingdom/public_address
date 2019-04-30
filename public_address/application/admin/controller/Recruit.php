<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
class Recruit extends AdminBase
{


    /**
     * 执行编辑
     */
    public function doEditRelease()
    {
        $arr   = input('param.');
       $state  = model('recruit')->update($arr);
        if($state){
            $this->success('编辑成功',url('admin/recruit/position'));
        }else{
            $this->error('编辑失败');
        }
    }
    /**
     * 编辑招聘信息
     */
    public function editRecruit()
    {
        $arr    = input('param.');
        $id     = $arr['id'];
        $result = model('recruit')->where('id',$id)->find();
        $this->assign('result',$result);
        return $this->fetch();
    }
    /**
     * 删除招聘信息
     */
    public function delRecruit()
    {
        $arr   = input('param.');
        $id    = $arr['id'];
        $state = model('recruit')->where('id',$id)->delete();
        if($state){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    /**
     * application列表
     */
    public function listed()
    {


            $result = Db::query('select (select recruitname from coding_recruit where id = coding_application.recruit_id) as name ,id,applicationname,sex,education,resumename,recruit_id,created_at FROM coding_application ');
            $this->assign('result',$result);
            $list   = model('recruit')->field('id,recruitname')->select();
            $this->assign('list',$list);
            return $this->fetch();

    }
    /**
     * application列表
     */
    public function listeds()
    {
        $arr = input('param.');
        $recruit_id = $arr['recruit_id'];
        $result = Db::query("select (select recruitname from coding_recruit where id = coding_application.recruit_id) as name ,id,applicationname,sex,education,resumename,recruit_id,created_at FROM coding_application WHERE recruit_id = $recruit_id");
        $result = json_encode($result);
        echo $result;
    }
    /**
     * 招聘职位
     */
    public function position()
    {
        $result = model('recruit')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch();
    }
    /**
     *发布职位
     */
    public function release()
    {

        return $this->fetch();
    }
    /**
     * 执行职位发布
     */
    public function doRelease()
    {
        $arr   = input('param.');
        $state = model('recruit')->save($arr);
        if($state){
            $this->success('添加成功');
        }else{
            $this->error('添加失败');
        }
    }

}