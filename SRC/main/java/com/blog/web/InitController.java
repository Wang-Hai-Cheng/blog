package com.blog.web;

import com.blog.config.permission.NBAuth;
import com.blog.dao.repository.ParamRepository;
import com.blog.model.constant.NoteBlogV4;
import com.blog.model.entity.permission.NBSysResource;
import com.blog.model.pojo.framework.NBR;
import com.blog.service.authority.AuthorityService;
import com.blog.service.param.ParamService;
import com.blog.util.NBUtils;
import com.blog.util.FontAwesomeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 */
@Controller
public class InitController {

    private final ParamService paramService;
    private final ParamRepository paramRepository;
    private final AuthorityService authorityService;

    @Autowired
    public InitController(ParamService paramService, AuthorityService authorityService, ParamRepository paramRepository) {
        this.paramService = paramService;
        this.authorityService = authorityService;
        this.paramRepository = paramRepository;
    }

    @RequestMapping("/init")
    public String init() {
        boolean initialization =
                paramService.getValueByName(NoteBlogV4.Param.INIT_STATUS)
                        .equals(NoteBlogV4.Init.INIT_NOT);
        return initialization ? "init" : "redirect:/";
    }

    @RequestMapping("/init/submit")
    @ResponseBody
    public NBR initSubmit(HttpServletRequest request, String username, String password, String email) {
        paramService.saveInitParam(request.getParameterMap());
        authorityService.initMasterAccount(username, password, email);
        paramRepository.updateValueByName(NoteBlogV4.Param.MAIL_SERVER_ACCOUNT, email);
        paramRepository.updateInitParam("1", "init_status");
        return NBR.ok("初始化设置成功！");
    }

    @NBAuth(value = "user:font:page", remark = "字体图标预览", group = NBAuth.Group.PAGE, type = NBSysResource.ResType.NAV_LINK)
    @RequestMapping("/font/list")
    public String b(HttpServletRequest request) {
        String fontAwesome = NBUtils.getFilePathInClassesPath("static/plugins/font-awesome/css/font-awesome.css");
        List<String> a = FontAwesomeUtil.getAllFonts(fontAwesome);
        request.setAttribute("fonts", a);
        return "fonts";
    }

}
