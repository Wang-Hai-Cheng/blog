package com.blog.dao.repository;

import com.blog.model.entity.NBComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;

/**
 * created by wang-hai-cheng on 2018/9/6 at 15:54
 *
 * @author wang-hai-cheng
 */
public interface CommentRepository extends JpaRepository<NBComment, Long>, JpaSpecificationExecutor<NBComment> {

    /**
     * 更新评论状态
     *
     * @param id
     * @param enable
     * @return
     */
    @Modifying
    @Transactional(rollbackOn = Exception.class)
    @Query("update NBComment c set c.enable = ?2 where c.id = ?1")
    int updateCommentStatus(Long id, boolean enable);

    /**
     * 查询今日的评论数量
     *
     * @param postDate
     * @return
     */
    @Query(nativeQuery = true, value = "select count(*) from nb_comment where post like ?1")
    int countByPostLike(String postDate);

    /**
     * 查询最新的一条评论
     *
     * @return
     */
    @Query(nativeQuery = true, value = "select * from nb_comment order by post desc limit 1")
    NBComment findLastestComment();
}
