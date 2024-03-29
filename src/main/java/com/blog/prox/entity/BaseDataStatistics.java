package com.blog.prox.entity;

import lombok.Builder;
import lombok.Data;

import java.io.Serializable;

/**
 * created by wang-hai-cheng on 2019/1/7 at 13:59
 *
 * @author wang-hai-cheng
 */
@Data
@Builder
public class BaseDataStatistics implements Serializable {

    private String text;
    private long sum;
    @Builder.Default
    private String url = "";
}
