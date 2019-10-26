package com.blog.dao.repository;

import com.blog.model.entity.NBCloudFile;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * created by wang-hai-cheng on 2019/2/13 at 16:33
 *
 * @author wang-hai-cheng
 */
public interface CloudFileRepository extends JpaRepository<NBCloudFile, Long> {

    /**
     * 计算某个cateId说下的数量
     *
     * @param cateId
     * @return
     */
    long countByCateId(long cateId);

}
