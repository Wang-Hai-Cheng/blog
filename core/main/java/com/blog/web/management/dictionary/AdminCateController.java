package com.blog.web.management.dictionary;

import cn.hutool.core.util.StrUtil;
import com.blog.model.entity.permission.NBSysResource;
import com.blog.model.pojo.framework.LayuiTable;
import com.blog.model.pojo.framework.NBR;
import com.blog.model.pojo.framework.Pagination;
import com.blog.config.permission.NBAuth;
import com.blog.dao.repository.ArticleRepository;
import com.blog.dao.repository.CateRepository;
import com.blog.model.entity.NBCate;
import com.blog.web.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;

import static com.blog.config.permission.NBAuth.Group.AJAX;
import static com.blog.config.permission.NBAuth.Group.ROUTER;

/**
 * created by wang-hai-cheng on 2018/8/15 at 16:29
 *
 * @author wang-hai-cheng
 */
@Controller
@RequestMapping("/management/dictionary/cate")
public class AdminCateController extends BaseController {

    private final CateRepository cateRepository;
    private final ArticleRepository articleRepository;

    @Autowired
    public AdminCateController(CateRepository cateRepository, ArticleRepository articleRepository) {
        this.cateRepository = cateRepository;
        this.articleRepository = articleRepository;
    }

    @RequestMapping
    @NBAuth(value = "management:cate:page", remark = "分类管理页面", group = ROUTER, type = NBSysResource.ResType.NAV_LINK)
    public String cate() {
        return "management/dictionary/cate";
    }

    @RequestMapping("/list")
    @ResponseBody
    @NBAuth(value = "management:cate:list", remark = "分类管理分页数据", group = AJAX)
    public LayuiTable<NBCate> cateList(Pagination<NBCate> catePage) {
        //jpa分页是从0开始
        Pageable pageable = PageRequest.of(catePage.getPage() - 1, catePage.getLimit());
        Page<NBCate> page = cateRepository.findAll(pageable);
        return layuiTable(page, pageable);
    }

    @RequestMapping("/create")
    @NBAuth(value = "management:cate:create", remark = "添加分类操作", group = AJAX)
    @ResponseBody
    public NBR cateCreate(NBCate cate) {
        if (cate != null && StrUtil.isNotEmpty(cate.getName())) {
            return ajaxDone(
                    () -> cateRepository.findCateCount(cate) == 0,
                    () -> ajaxDone(() -> cateRepository.save(cate) != null, () -> "添加分类信息"),
                    () -> "已存在此分类信息"
            );
        }
        return NBR.error("添加分类值有误！");
    }

    @RequestMapping("/delete")
    @NBAuth(value = "management:cate:delete", remark = "删除分类操作", group = AJAX)
    @ResponseBody
    public NBR delete(Long cateId) {
        return ajaxDone(
                () -> articleRepository.countByCateId(cateId) == 0,
                () -> ajaxDone(cateId, cateRepository::deleteById, () -> "删除分类"),
                () -> "此分类下还有文章！"
        );
    }

    @RequestMapping("/update")
    @NBAuth(value = "management:cate:update", remark = "修改分类操作", group = AJAX)
    @ResponseBody
    public NBR update(@Valid NBCate cate, BindingResult result) {
        if (result.getErrorCount() == 0) {
            return ajaxDone(
                    () -> cateRepository.findCateCount(cate) == 0,
                    () -> ajaxDone(() -> cateRepository.save(cate) != null, () -> "修改分类信息"),
                    () -> "已存在此分类信息（分类名/中文名重复）"
            );
        } else {
            return ajaxJsr303(result.getFieldErrors());
        }
    }
}