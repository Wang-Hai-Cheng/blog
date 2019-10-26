package com.blog.web.frontend;

import com.blog.model.entity.NBNote;
import com.blog.model.entity.NBProject;
import com.blog.model.pojo.framework.NBR;
import com.blog.model.pojo.framework.Pagination;
import com.blog.dao.repository.ProjectCateRepository;
import com.blog.dao.repository.ProjectRepository;
import com.blog.web.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * created by wang-hai-cheng on 2018/12/15 at 11:30 AM
 *
 * @author wang-hai-cheng
 */
@Controller("frontProjectController")
@RequestMapping("/project")
public class ProjectController extends BaseController {

    private final ProjectRepository projectRepository;
    private final ProjectCateRepository projectCateRepository;

    @Autowired
    public ProjectController(ProjectRepository projectRepository, ProjectCateRepository projectCateRepository) {
        this.projectRepository = projectRepository;
        this.projectCateRepository = projectCateRepository;
    }

    @RequestMapping
    public String project(Model model, Pagination<NBProject> pagination, Long cateId) {
        pagination.setLimit(20);
        Pageable pageable = getPageableWithCustomSort(pagination, "post", "desc");
        Page<NBProject> projectPage;
        if (cateId != null) {
            Example<NBProject> example = Example.of(NBProject.builder().cateId(cateId).build());
            projectPage = projectRepository.findAll(example, pageable);
        } else {
            projectPage = projectRepository.findAll(pageable);
        }
        model.addAttribute("currentCateId", cateId);
        model.addAttribute("projects", projectPage);
        model.addAttribute("projectCates", projectCateRepository.findAll());
        return "frontend/project";
    }

    @RequestMapping(value = "/next", method = RequestMethod.POST)
    @ResponseBody
    public NBR next(Pagination<NBNote> pagination, Long cateId) {
        pagination.setLimit(20);
        Pageable pageable = getPageableWithCustomSort(pagination, "post", "desc");
        Page<NBProject> projectPage;
        if (cateId != null) {
            Example<NBProject> example = Example.of(NBProject.builder().cateId(cateId).build());
            projectPage = projectRepository.findAll(example, pageable);
            return NBR.ok("获取成功！", projectPage);
        } else {
            projectPage = projectRepository.findAll(pageable);
            return NBR.ok("获取成功！", projectPage);
        }
    }
}
