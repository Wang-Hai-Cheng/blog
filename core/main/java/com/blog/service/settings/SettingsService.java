package com.blog.service.settings;

import com.blog.model.pojo.framework.NBR;
import com.blog.dao.repository.ParamRepository;
import com.blog.model.entity.NBParam;
import com.blog.util.CacheUtils;
import com.blog.util.NBUtils;
import org.springframework.data.domain.Example;
import org.springframework.util.StringUtils;

import java.util.Map;
import java.util.function.Supplier;

/**
 * created by wang-hai-cheng on 2018/8/13 at 15:08
 *
 * @author wang-hai-cheng
 */
public interface SettingsService {

    /**
     * 默认更新操作
     *
     * @param name
     * @param value
     * @param supplier
     * @return
     */
    default NBR update(String name, String value, Supplier<NBR> supplier) {
        CacheUtils.getParamCache().clear();
        if (StringUtils.isEmpty(name)) {
            return NBR.error("参数 key 不能为空！");
        } else {
            ParamRepository paramRepository = NBUtils.getBean(ParamRepository.class);
            long cnt = paramRepository.count(Example.of(NBParam.builder().name(name).build()));
            if (cnt == 0) {
                return NBR.error("不存在参数：" + name);
            } else {
                final String val = value == null ? "" : value;
                paramRepository.updateValueByName(name, val);
                return supplier.get();
            }
        }
    }

    /**
     * 修改开关类型的设置
     *
     * @param name
     * @param value
     * @return
     */
    NBR updateSwitch(String name, String value);

    /**
     * 修改文本类型的设置
     *
     * @param name
     * @param value
     * @return
     */
    NBR updateText(String name, String value);

    /**
     * 更新发送邮件服务器配置
     *
     * @param paramMap
     * @return
     */
    NBR updateMailConfig(Map<String, Object> paramMap);
}