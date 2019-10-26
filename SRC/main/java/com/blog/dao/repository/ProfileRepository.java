package com.blog.dao.repository;

import com.blog.model.entity.NBAbout;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * created by wang-hai-cheng on 2018/12/8 at 23:05
 *
 * @author wang-hai-cheng
 */
public interface ProfileRepository extends JpaRepository<NBAbout, Long> {
}
