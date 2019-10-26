package com.blog.dao.repository;

import com.blog.model.entity.permission.NBSysUserRole;
import com.blog.model.entity.permission.pk.UserRoleKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;

/**
 * created by wang-hai-cheng on 2018/7/28 at 23:26
 *
 * @author wang-hai-cheng
 */
@Transactional(rollbackOn = Exception.class)
public interface UserRoleRepository extends JpaRepository<NBSysUserRole, UserRoleKey> {

    /**
     * 根据用户id删除相关联的角色信息
     *
     * @param userId
     * @return
     */
    @Modifying
    @Query(nativeQuery = true, value = "DELETE FROM sys_user_role WHERE user_id = ?1")
    void deleteRolesByUserId(Long userId);
}
