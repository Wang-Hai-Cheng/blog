package com.blog.exception;

/**
 * created by wang-hai-cheng on 2018/8/3 at 23:10
 * @author wang-hai-cheng
 */
public class UploadPathMissException extends RuntimeException {
    public UploadPathMissException() {
        super();
    }

    public UploadPathMissException(String message) {
        super(message);
    }

    public UploadPathMissException(String message, Throwable cause) {
        super(message, cause);
    }

    public UploadPathMissException(Throwable cause) {
        super(cause);
    }
}
