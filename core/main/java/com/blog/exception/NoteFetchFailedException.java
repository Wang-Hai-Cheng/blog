package com.blog.exception;

/**
 * created by wang-hai-cheng on 2018/8/10 at 11:10
 *
 * @author wang-hai-cheng
 */
public class NoteFetchFailedException extends RuntimeException {
    public NoteFetchFailedException() {
        super("笔记获取失败！");
    }
}
