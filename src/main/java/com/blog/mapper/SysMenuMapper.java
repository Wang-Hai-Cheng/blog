package com.blog.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.blog.entity.SysMenu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author wang-hai-cheng
 * @since 2019-10-30
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {

    @Select("select * from sys_menu ${ew.customSqlSegment}")
    List<SysMenu> getAll(@Param(Constants.WRAPPER) Wrapper wrapper);
}
