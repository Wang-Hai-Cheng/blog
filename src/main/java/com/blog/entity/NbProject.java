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
public class NbProject implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("cate_id")
    private Long cateId;

    @TableField("cover")
    private String cover;

    @TableField("description")
    private String description;

    @TableField("modify")
    private LocalDateTime modify;

    @TableField("name")
    private String name;

    @TableField("post")
    private LocalDateTime post;

    @TableField("url")
    private String url;

    @TableField("cate_refer_id")
    private Long cateReferId;


}
