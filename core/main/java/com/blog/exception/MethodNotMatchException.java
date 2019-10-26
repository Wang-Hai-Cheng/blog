package com.blog.exception;

/**
 * created by wang-hai-cheng on 2018/8/3 at 22:16
 * @author wang-hai-cheng
 */
public class MethodNotMatchException extends RuntimeException {
    public MethodNotMatchException() {
        super();
    }

    public MethodNotMatchException(String message) {
        super(message);
    }

    public MethodNotMatchException(String message, Throwable cause) {
        super(message, cause);
    }

    public MethodNotMatchException(Throwable cause) {
        super(cause);
    }
}
