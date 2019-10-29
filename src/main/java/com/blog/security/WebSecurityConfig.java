package com.blog.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    MyLogoutSuccessHandler myLogoutSuccessHandler;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                //.csrf(AbstractHttpConfigurer::disable)//关闭跨站请求，进行安全访问//？？？有时候莫名其妙不能点击网页登陆按钮
                .authorizeRequests()
                //这个路径不做认证授权拦截操作，直接放行
                .antMatchers("/login").permitAll()//放行
//                .antMatchers("/info/admin").authenticated()//登陆过才可访问
                //设置资源路径所需权限//注意路径<<斜杠>>
//                .antMatchers("/product/delete").hasAnyAuthority("PRODUCT_DELETE")
                //除上以外的，全部拦截(认证过的用户都可以访问)
                .antMatchers("/**")
                .permitAll()//放行所有
//                .fullyAuthenticated()
                .and()
//                .httpBasic();//浏览器弹窗方式认证
                .formLogin().loginPage("/login")//form表单方式认证
                .and()
                .logout()
                .logoutUrl("/out")
                .logoutSuccessUrl("/logout")
//                .logoutSuccessHandler(myLogoutSuccessHandler)//不加处理类才能登出后跳转到指定页面，且指定页面不能与logoutUrl()重复
                .deleteCookies("JSESSIONID").permitAll()
        ;
    }
}
