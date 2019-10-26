package com.blog.config.listener;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * created by wang-hai-cheng on 2018/8/3 at 23:15
 * @author wang-hai-cheng
 */
@Slf4j
@Component
@Order
public class FinalListener implements ApplicationListener<ApplicationReadyEvent> {

    @Override
    public void onApplicationEvent(ApplicationReadyEvent event) {
        log.info("「个人博客」App 启动完毕（欢迎使用wang-hai-cheng开源blog项目）。");
    }
}
