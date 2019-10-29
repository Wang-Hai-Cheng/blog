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
public class NbNote implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("clear_content")
    private String clearContent;

    @TableField("content")
    private String content;

    @TableField("md_content")
    private String mdContent;

    @TableField("modify")
    private LocalDateTime modify;

    @TableField("post")
    private LocalDateTime post;

    @TableField("show")
    private Boolean show;

    @TableField("title")
    private String title;

    @TableField("top")
    private Boolean top;


}
