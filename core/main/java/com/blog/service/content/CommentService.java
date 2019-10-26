package com.blog.service.content;

import com.blog.model.pojo.bo.CommentQueryBO;
import com.blog.model.entity.NBComment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * created by wang-hai-cheng on 2018/9/7 at 9:42
 *
 * @author wang-hai-cheng
 */
public interface CommentService {

    /**
     * 查询评论的分页信息
     *
     * @param pageable
     * @param commentQueryBO
     * @return
     */
    Page<NBComment> findPageInfo(Pageable pageable, CommentQueryBO commentQueryBO);
}
