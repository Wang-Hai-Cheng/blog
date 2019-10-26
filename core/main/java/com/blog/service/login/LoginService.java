package com.blog.service.login;

import com.blog.model.pojo.framework.NBR;

/**
 * 登录服务接口
 * created by wang-hai-cheng on 2018/7/21 at 17:59
 * @author wang-hai-cheng
 */
public interface LoginService<T> {


    /**
     * 登录方法
     *
     * @param data
     * @return
     */
    NBR doLogin(T data);


}
