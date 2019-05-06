<?php
namespace app\index\controller;
use app\common\controller\IndexBase;
class Recruit extends IndexBase
{
    /**
     * 执行添加招聘信息
     */
    public function addRecruit()
    {
        $arr     = input('param.');
        $state   = model('application')->save($arr);
        if($state)
        {
            $this->success('投递成功');
        }else{
            $this->error('投递失败');
        }
    }
    /**
     * 应聘页面
     * @return mixed
     */
    public function index()
    {
        $arr     = input('param.');
        $id      = $arr['category_id'];
        $this->assign('recruit_id',$id);
        return $this->fetch();
    }
    /**
     * 招聘;列表
     */
    public function recruitList()
    {
        $recruitSort      = model('recruit')->field('id,recruitname,created_at,duty')->where('is_line',1)->paginate(5);
        $this->assign('recruitSort',$recruitSort);
        return $this->fetch();
    }
    /**
     * 招聘详情页
     */
    public function recruitDetail()
    {
        $arr        = input('param.');
        $id         = $arr['id'];
        $result     = model('recruit')->where('id',$id)->find();
        $this->assign('result',$result);
        return $this->fetch();
    }
}