package com.blog.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@Configuration
public class SwaggerConfig {
    @Bean
    public Docket customDocket(){
        return new Docket(DocumentationType.SWAGGER_2).apiInfo(apiInfo());
    }

    private ApiInfo apiInfo() {
        Contact contact = new Contact("渔人","http://www.baidu.com","wang-hai-cheng@foxmail.com");
        return new ApiInfoBuilder()
                .title("项目接口文档")
                .description("欢迎加入-830841208-Java交流群")
                .contact(contact)
                .version("1.1.0")
                .build();
    }
}