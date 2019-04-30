<?php
namespace app\common\controller;
use think\Controller;
use app\admin\model\Category as modelcategory;
class AdminBase extends Controller
{
	public function _initialize()
	{
		/**
		 * 判断登录态
		 */
		if (is_null(request()->session('admin'))) {
			$this->error('请登录!', url('admin/index/index'));
		}
		/**
		 * 左边栏的呈现
		 */
		$mcate = new modelcategory;
		$companyList      = $mcate->categoryName();
		$this->assign('companyList',$companyList);
	}
	public function _empty()
	{
		$this->display('Common:404');
	}
}
