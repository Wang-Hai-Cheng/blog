package com.blog.exception;

/**
 * 角色未授权
 * created by wang-hai-cheng on 2018/7/20 at 14:22
 *
 * @author wang-hai-cheng
 */
public class UnauthorizedRoleException extends RuntimeException {
    public UnauthorizedRoleException() {
        super();
    }

    public UnauthorizedRoleException(String message) {
        super(message);
    }
}
