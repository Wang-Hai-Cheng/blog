package com.blog.service.content;

import com.blog.model.pojo.bo.MessageQueryBO;
import com.blog.model.entity.NBMessage;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * created by wang-hai-cheng on 2018/9/7 at 9:42
 *
 * @author wang-hai-cheng
 */
public interface MessageService {

    /**
     * 查询消息的分页信息
     *
     * @param pageable
     * @param messageQueryBO
     * @return
     */
    Page<NBMessage> findPageInfo(Pageable pageable, MessageQueryBO messageQueryBO);
}
