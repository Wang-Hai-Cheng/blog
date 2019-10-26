package com.blog.dao.repository;

import com.blog.model.entity.NBCate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * created by wang-hai-cheng on 2018/8/3 at 11:16
 *
 * @author wang-hai-cheng
 */
public interface CateRepository extends JpaRepository<NBCate, Long> {

    /**
     * 查找已存在对应的分类数目
     *
     * @param cate
     * @return
     */
    @Query("SELECT COUNT(c) FROM NBCate c WHERE c.cnName = :#{#cate.cnName} AND c.name = :#{#cate.name} AND c.fontIcon = :#{#cate.fontIcon}")
    long findCateCount(@Param("cate") NBCate cate);
}
