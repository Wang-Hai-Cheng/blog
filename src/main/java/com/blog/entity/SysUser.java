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
public class SysUser implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("avatar")
    private String avatar;

    @TableField("create")
    private LocalDateTime create;

    @TableField("default_role_id")
    private Long defaultRoleId;

    @TableField("email")
    private String email;

    @TableField("enable")
    private Boolean enable;

    @TableField("nickname")
    private String nickname;

    @TableField("password")
    private String password;

    @TableField("qq_num")
    private String qqNum;

    @TableField("qq_open_id")
    private String qqOpenId;

    @TableField("username")
    private String username;

    @TableField("wechat_open_id")
    private String wechatOpenId;


}
