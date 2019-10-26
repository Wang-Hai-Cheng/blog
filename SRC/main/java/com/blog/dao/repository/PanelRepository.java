package com.blog.dao.repository;

import com.blog.model.entity.NBPanel;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * created by wang-hai-cheng on 2018/7/19 at 下午3:04
 * @author wang-hai-cheng
 */
public interface PanelRepository extends JpaRepository<NBPanel, Long> {
}
