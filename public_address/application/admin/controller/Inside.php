<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
class Inside  extends AdminBase
{
    /**
     * 内部操作
     */
    public function insideOperation()
    {
        $tmpArr = input('param.');
       $num = $tmpArr['sortNumber'];

        switch($num)
        {
            case '1';
                return $this->fetch('inside/operation');
                break;
            case '2';
                $this->operation();
                break;
            case '3';
                $this->operation3();
                break;
            case '4';
                $this->operation4();
                break;
            case '5';
                $this->operation5();
                break;
            case '6';
                $this->operation6();
                break;
            case '7';
                $this->operation7();
                break;
            case '8';
                $this->operation8();
                break;
            case '9';
                $this->operation9();
                break;
        }
    }
    /**
     * 公司简介
     */
    private function operation1()
    {
        echo 1234313;
        return $this->fetch('inside/operation');
    }
    /**
     * 公司标志
     */
    private function operation()
    {
     return  $this->fetch();
    }
    /**
     * 联系方式
     */
    private function operation3()
    {
       $this->fetch('inside/operation');
    }
    /**
     * 领导致辞
     */
    private function operation4()
    {
       $this->fetch('inside/operation');
    }
    /**
     * 企业架构
     */
    private function operation5()
    {
       $this->fetch('inside/operation');
    }
    /**
     * 文化理念
     */
    private function operation6()
    {
       $this->fetch('inside/operation');
    }
    /**
     * 发展历程
     */
    private function operation7()
    {
       $this->fetch('inside/operation');
    }
    /**
     *人才理念
     */
    private function operation8()
    {
       $this->fetch('inside/operation');
    }
    /**
     * 培训发展
     */
    private function operation9()
    {
       $this->fetch('inside/operation');
    }

}