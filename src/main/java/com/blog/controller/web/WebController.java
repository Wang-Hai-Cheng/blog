package com.blog.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.HashMap;

@Controller
public class WebController {
    @GetMapping("/management/index")
    public String toIndex(Model model){
        HashMap<String, String> m = new HashMap<>();
        m.put("nickname","王王王");
        model.addAttribute("su",m);
        return "admin_index";
    }

    @GetMapping("/management/dashboard")
    public String toManagementDashboard(Model model){
        model.addAttribute("data", dashboardService.calculateData());
        model.addAttribute("c", dashboardService.findLatestComment());
//        model.addAttribute("tableData", dashboardService.findTableStatistics());
        return "management/dashboard";

    }

}
