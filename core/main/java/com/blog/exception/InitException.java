package com.blog.exception;

/**
 * created by wang-hai-cheng on 2018/7/28 at 21:17
 * @author wang-hai-cheng
 */
public class InitException extends RuntimeException {
    public InitException() {
        super();
    }

    public InitException(String message) {
        super(message);
    }

    public InitException(String message, Throwable cause) {
        super(message, cause);
    }

    public InitException(Throwable cause) {
        super(cause);
    }
}
