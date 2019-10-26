package com.blog.model.pojo.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import com.blog.model.entity.NBTag;

/**
 * created by wang-hai-cheng on 2018/8/10 at 10:31
 * @author wang-hai-cheng
 */
@Setter
@Getter
@ToString
public class NBTagVO extends NBTag {
    private String selected;
}
