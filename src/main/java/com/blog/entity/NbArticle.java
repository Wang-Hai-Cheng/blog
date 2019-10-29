package com.blog.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author wang-hai-cheng
 * @since 2019-10-30
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class NbArticle implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private Long id;

    @TableField("appreciable")
    private Boolean appreciable;

    @TableField("approve_cnt")
    private Integer approveCnt;

    @TableField("author_id")
    private Long authorId;

    @TableField("cate_id")
    private Long cateId;

    @TableField("commented")
    private Boolean commented;

    @TableField("content")
    private String content;

    @TableField("cover")
    private String cover;

    @TableField("draft")
    private Boolean draft;

    @TableField("md_content")
    private String mdContent;

    @TableField("modify")
    private LocalDateTime modify;

    @TableField("post")
    private LocalDateTime post;

    @TableField("summary")
    private String summary;

    @TableField("text_content")
    private String textContent;

    @TableField("title")
    private String title;

    @TableField("top")
    private Integer top;

    @TableField("url_seq")
    private String urlSeq;

    @TableField("view")
    private Integer view;

    @TableField("cate_refer_id")
    private Long cateReferId;


}
