package com.blog.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
public class NbComment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("article_id")
    private Long articleId;

    @TableField("clear_comment")
    private String clearComment;

    @TableField("comment")
    private String comment;

    @TableField("enable")
    private Boolean enable;

    @TableField("ip_addr")
    private String ipAddr;

    @TableField("ip_cn_addr")
    private String ipCnAddr;

    @TableField("post")
    private LocalDateTime post;

    @TableField("user_agent")
    private String userAgent;

    @TableField("user_id")
    private Long userId;

    @TableField("user_refer_id")
    private Long userReferId;


}
