package com.blog.exception;

/**
 * 用户未登录或超时
 * created by wang-hai-cheng on 2018/7/20 at 14:22
 *
 * @author wang-hai-cheng
 */
public class UserNotLoginException extends RuntimeException {
    public UserNotLoginException() {
        super();
    }

    public UserNotLoginException(String message) {
        super(message);
    }
}
