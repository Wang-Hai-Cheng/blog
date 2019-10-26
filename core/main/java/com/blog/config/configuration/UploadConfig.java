package com.blog.config.configuration;

import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.MultipartConfigElement;

/**
 * created by wang-hai-cheng on 2018/8/5 at 19:35
 *
 * @author wang-hai-cheng
 */
@Configuration
public class UploadConfig {

    /**
     * 文件上传临时路径
     */
    @Bean
    public MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        String temp = System.getProperty("user.dir");
        factory.setLocation(temp);
        return factory.createMultipartConfig();
    }


}
