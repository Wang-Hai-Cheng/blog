package com.blog.model.pojo.bo;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * created by wang-hai-cheng on 2018/9/7 at 11:05
 *
 * @author wang-hai-cheng
 */
@ToString
@Data
public class CommentQueryBO implements Serializable {
    private Long articleId;
    private String clearComment;
    private String ipCnAddr;
    private Long userId;
}
