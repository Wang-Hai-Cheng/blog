package com.blog.web.management.dictionary;

import com.blog.model.entity.permission.NBSysResource;
import com.blog.model.pojo.framework.LayuiTable;
import com.blog.model.pojo.framework.NBR;
import com.blog.model.pojo.framework.Pagination;
import com.blog.config.permission.NBAuth;
import com.blog.dao.repository.TagReferRepository;
import com.blog.dao.repository.TagRepository;
import com.blog.model.entity.NBTag;
import com.blog.web.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;

import static com.blog.config.permission.NBAuth.Group.AJAX;
import static com.blog.config.permission.NBAuth.Group.ROUTER;

/**
 * created by wang-hai-cheng on 2018/8/15 at 16:28
 *
 * @author wang-hai-cheng
 */
@Controller
@RequestMapping("/management/dictionary/tag")
public class AdminTagController extends BaseController {

    private final TagRepository tagRepository;
    private final TagReferRepository tagReferRepository;

    @Autowired
    public AdminTagController(TagRepository tagRepository, TagReferRepository tagReferRepository) {
        this.tagRepository = tagRepository;
        this.tagReferRepository = tagReferRepository;
    }

    @RequestMapping
    @NBAuth(value = "management:tag:page", remark = "标签管理页面", group = ROUTER, type = NBSysResource.ResType.NAV_LINK)
    public String tagIndex() {
        return "management/dictionary/tag";
    }

    @RequestMapping("/list")
    @ResponseBody
    @NBAuth(value = "management:tag:list", remark = "标签管理页面分页数据接口", group = AJAX)
    public LayuiTable<NBTag> cateList(Pagination<NBTag> tagPagination, String tagName) {
        Sort sort = getJpaSort(tagPagination);
        Pageable pageable = PageRequest.of(tagPagination.getPage() - 1, tagPagination.getLimit(), sort);
        if (StringUtils.isEmpty(tagName)) {
            Page<NBTag> tagPage = tagRepository.findAll(pageable);
            return layuiTable(tagPage, pageable);
        } else {
            Example<NBTag> tagExample = Example.of(
                    NBTag.builder().name(tagName).build(),
                    ExampleMatcher.matching().withMatcher("name", ExampleMatcher.GenericPropertyMatcher::contains).withIgnoreCase()
            );
            Page<NBTag> tagPage = tagRepository.findAll(tagExample, pageable);
            return layuiTable(tagPage, pageable);
        }
    }

    @RequestMapping("/update")
    @ResponseBody
    @NBAuth(value = "management:tag:update", remark = "修改标签数据操作接口", group = AJAX)
    public NBR update(@Valid NBTag tag, BindingResult result) {
        if (result.getErrorCount() == 0) {
            return ajaxDone(() -> tagRepository.save(tag) != null, () -> "修改标签");
        } else {
            return ajaxJsr303(result.getFieldErrors());
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    @NBAuth(value = "management:tag:delete", remark = "删除标签数据操作接口", group = AJAX)
    public NBR delete(@RequestParam("id") Long cateId) {
        return ajaxDone(
                () -> tagReferRepository.countByTagId(cateId) == 0,
                () -> ajaxDone(cateId, tagRepository::deleteById, () -> "删除标签"),
                () -> "请删除相关使用此标签的内容！"
        );
    }
}
