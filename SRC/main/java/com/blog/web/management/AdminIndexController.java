package com.blog.web.management;

import com.blog.config.permission.NBAuth;
import com.blog.model.entity.permission.NBSysMenu;
import com.blog.model.entity.permission.NBSysResource;
import com.blog.model.entity.permission.NBSysUser;
import com.blog.model.pojo.business.MenuTree;
import com.blog.service.dashboard.DashboardService;
import com.blog.dao.repository.MenuRepository;
import com.blog.util.NBUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Objects;

/**
 * created by wang-hai-cheng on 2018/7/21 at 23:31
 *
 * @author wang-hai-cheng
 */
@Controller
@RequestMapping("/management")
public class AdminIndexController {

    private final MenuRepository menuRepository;
    private final DashboardService dashboardService;

    @Autowired
    public AdminIndexController(MenuRepository menuRepository, DashboardService dashboardService) {
        this.menuRepository = menuRepository;
        this.dashboardService = dashboardService;
    }

    @RequestMapping("/index")
    @NBAuth(value = "management:index:page", remark = "后台管理首页", type = NBSysResource.ResType.OTHER, group = NBAuth.Group.PAGE)
    public String index(Model model) {
        NBSysUser user = NBUtils.getSessionUser();

        Long userRoleId = Objects.requireNonNull(user).getDefaultRoleId();
        List<NBSysMenu> menus = menuRepository.findAllByRoleIdOrderBy(userRoleId, true);
        List<MenuTree> menuTrees = MenuTree.buildByRecursive(menus);
        model.addAttribute("menus", menuTrees);

        String avatar = user.getAvatar();
        model.addAttribute("avatar", avatar);
        return "admin_index";
    }

    @RequestMapping("/dashboard")
    @NBAuth(value = "management:index:dashboard", remark = "管理页面仪表盘界面", type = NBSysResource.ResType.NAV_LINK, group = NBAuth.Group.ROUTER)
    public String dashboard(Model model) {
        model.addAttribute("data", dashboardService.calculateData());
        model.addAttribute("c", dashboardService.findLatestComment());
//        model.addAttribute("tableData", dashboardService.findTableStatistics());
        return "management/dashboard";
    }
}

