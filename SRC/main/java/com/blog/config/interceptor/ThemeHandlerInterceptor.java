package com.blog.config.interceptor;

import com.blog.dao.repository.ParamRepository;
import com.blog.web.BaseController;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 主题解析拦截器
 * created by wang-hai-cheng on 2018/9/9 at 上午9:38
 *
 * @author wang-hai-cheng
 */
public class ThemeHandlerInterceptor extends BaseController implements HandlerInterceptor {

    private ParamRepository paramRepository;

    public ThemeHandlerInterceptor(ParamRepository paramRepository) {
        this.paramRepository = paramRepository;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
        String view = modelAndView.getViewName();
        String simpleView = view + "_simple";
        String normalView = view + "_normal";
        modelAndView.setViewName(handleStyle(simpleView, normalView, this.paramRepository));
    }

}
