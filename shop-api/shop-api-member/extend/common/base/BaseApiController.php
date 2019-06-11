<?php
/**
 * Created by IntelliJ IDEA.
 * User: 七友
 * Date: 2019/5/26
 * Time: 19:42
 */

namespace common\base;

use think\Controller;

class BaseApiController extends Controller
{

    function check_login()
    {
        //验证用户是否登陆
        return (bool)session('user');
    }

    function setNotLogin()
    {
        return $this->setResult(501, '用户未登录', request()->baseUrl());
    }

    function setSuccess($msg = 'success', $data = null)
    {
        return $this->setResult(200, $msg, $data);
    }

    function setSuccessData($data)
    {
        return $this->setResult(200, 'success', $data);
    }

    function setError($msg = 'error', $data = null)
    {
        return $this->setResult(500, $msg, $data);
    }

    function setResult($code = 200, $msg = 'success', $data = null)
    {
        return json([
            'code' => $code,
            'msg' => $msg,
            'data' => $data
        ]);
    }

}