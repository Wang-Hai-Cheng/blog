package com.blog.dao.repository;

import com.blog.model.entity.NBUpload;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * created by wang-hai-cheng on 2018/8/4 at 0:03
 * @author wang-hai-cheng
 */
public interface UploadRepository extends JpaRepository<NBUpload, Long> {
}
