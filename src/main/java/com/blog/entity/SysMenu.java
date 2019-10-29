package com.blog.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
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
public class SysMenu implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("enable")
    private Boolean enable;

    @TableField("icon")
    private String icon;

    @TableField("name")
    private String name;

    @TableField("order_index")
    private Integer orderIndex;

    @TableField("parent_id")
    private Long parentId;

    @TableField("remark")
    private String remark;

    @TableField("role_id")
    private Long roleId;

    @TableField("type")
    private String type;

    @TableField("resource_id")
    private Long resourceId;


}
