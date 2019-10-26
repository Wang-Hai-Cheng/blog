package com.blog.exception;

/**
 * created by wang-hai-cheng on 2018/8/10 at 11:10
 *
 * @author wang-hai-cheng
 */
public class ArticleFetchFailedException extends RuntimeException {
    public ArticleFetchFailedException() {
        super("文章获取失败！");
    }

    public ArticleFetchFailedException(String message) {
        super(message);
    }
}
