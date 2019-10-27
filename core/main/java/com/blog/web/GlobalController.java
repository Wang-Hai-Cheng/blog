package com.blog.web;

import com.blog.dao.repository.ParamRepository;
import com.blog.model.entity.NBParam;
import com.blog.util.CacheUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * created by wang-hai-cheng on 2018/9/7 at 9:35
 *
 * @author wang-hai-cheng
 */
@ControllerAdvice(basePackages = "me.wang-hai-cheng.noteblogv4.web.frontend")
public class GlobalController {

    private final String GTE10PARAMS = "gte_10_params";
    private final ParamRepository paramRepository;

    @Autowired
    public GlobalController(ParamRepository paramRepository) {
        this.paramRepository = paramRepository;
    }

    @ModelAttribute
    public void addSettings(Model model) {
        //noinspection unchecked
        Map<String, Object> settingsMap = CacheUtils.getParamCache().get(GTE10PARAMS, Map.class);
        if (settingsMap != null && settingsMap.size() > 0) {
            model.addAttribute("settings", settingsMap);
        } else {
            List<NBParam> params = paramRepository.findAllByLevelGreaterThanEqual(10);
            settingsMap = params.stream().collect(Collectors.toMap(NBParam::getName, NBParam::getValue));
            CacheUtils.getParamCache().put(GTE10PARAMS, settingsMap);
            model.addAttribute("settings", settingsMap);
        }
    }
}