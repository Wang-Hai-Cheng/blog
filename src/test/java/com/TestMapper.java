package com;


import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.blog.entity.NbArticle;
import com.blog.entity.SysLogger;
import com.blog.entity.SysMenu;
import com.blog.mapper.NbArticleMapper;
import com.blog.mapper.SysLoggerMapper;
import com.blog.mapper.SysMenuMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = com.blog.Blog.class)
public class TestMapper {
    @Autowired
    SysMenuMapper mapper;
    @Test
    public void ttt(){
        System.out.println("全部数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<>()));

        System.out.println("id等于1的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().eq("id","1")));

        System.out.println("id小于2的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().lt("id","2")));

        System.out.println("name是仪表盘的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().like("name","仪表盘")));

        System.out.println("name开头是`发布`的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().likeRight("name","发布")));

        System.out.println("name结尾是`目录`的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().likeLeft("name","目录")));

        System.out.println("remark是`null`的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().isNull("remark")));

        System.out.println("id是(1,3,5)之中的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().in("id",1,3,5)));

        System.out.println("enable分组的数据==================================");//??
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().groupBy("enable")));//??

        System.out.println("id倒排序的数据(两个都是)==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().orderBy(true,false,"id")));
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().orderByDesc("id")));

        System.out.println("id having 大于10的数据==================================");//??
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().having("id>10")));//??

        System.out.println("id等于3或者4的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().eq("id","3").or().eq("id",4)));

        System.out.println("id等于6和enable等于0的数据==================================");
        System.out.println(mapper.selectList(new QueryWrapper<SysMenu>().eq("id",6).eq("enable",0)));

        System.out.println("获取所有满足条件的数据==================================");//??
        mapper.getAll(Wrappers.<SysMenu>lambdaQuery().eq(SysMenu::getName, "菜单根目录"));//??
    }
}
