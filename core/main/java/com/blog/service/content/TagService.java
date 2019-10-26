package com.blog.service.content;

import com.blog.model.pojo.vo.NBTagVO;
import com.blog.model.constant.TagType;

import java.util.List;
import java.util.Map;

/**
 * created by wang-hai-cheng on 2018/8/20 at 11:24
 *
 * @author wang-hai-cheng
 */
public interface TagService {

    /**
     * 查找文章/笔记相关tag并selected
     *
     * @param referId
     * @param type    文章还是笔记{@code TagType}
     * @return
     */
    List<NBTagVO> findSelectedTagsByReferId(Long referId, TagType type);

    /**
     * 查询标签使用数到首页标签面板上显示
     *
     * @return
     */
    List<Map<String, Object>> findTagsTab();
}
