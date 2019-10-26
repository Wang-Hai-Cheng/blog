package com.blog.service.mail;

import com.blog.model.entity.NBArticle;

/**
 * created by wang-hai-cheng on 2019-01-08 at 22:27
 * @author wang-hai-cheng
 */
public interface MailService {

    /**
     * 发送评论通知邮件
     * @param site
     * @param article
     * @param comment
     */
    void sendNoticeMail(String site, NBArticle article, String comment);
}
