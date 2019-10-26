package com.blog.model.pojo.business;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * created by wang-hai-cheng on 2019/1/2 at 16:57
 *
 * @author wang-hai-cheng
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QqLoginModel implements Serializable {

    private String callbackDomain;
    private String code;


}
