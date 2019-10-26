package com.blog.model.pojo.vo;

import lombok.Builder;
import lombok.Data;
import com.blog.model.entity.NBComment;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * created by wang-hai-cheng on 2019/1/7 at 14:11
 *
 * @author wang-hai-cheng
 */
@Data
@Builder
public class LatestComment implements Serializable {

    private Long articleId;
    private String articleTitle;
    private LocalDateTime articleDate;
    private NBComment comment;
}
