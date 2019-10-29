package com.blog.entity;

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
public class SysRoleResource implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("resource_id")
    private Long resourceId;

    @TableField("role_id")
    private Long roleId;

    @TableField("enable")
    private Boolean enable;


}
