package com.blog;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author wang-hai-cheng
 */
@SpringBootApplication
@MapperScan("com.blog.mapper")//注意包位置
@EnableCaching
@EnableSwagger2//开启swagger接口文档功能
public class Blog {
    public static void main(String[] args) {
        SpringApplication.run(Blog.class, args);
    }
}
