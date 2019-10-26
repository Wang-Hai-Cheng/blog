package com.blog.model.pojo.business;

import lombok.Data;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Serializable;

/**
 * created by wang-hai-cheng on 2018/7/21 at 18:37
 * @author wang-hai-cheng
 */
@Data
public class SimpleLoginData implements Serializable {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private String bmyName;
    private String bmyPass;
    private Boolean remember;
    private String vercode;

}
