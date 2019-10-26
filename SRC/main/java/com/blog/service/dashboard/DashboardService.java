package com.blog.service.dashboard;

import com.blog.model.pojo.vo.BaseDataStatistics;
import com.blog.model.pojo.vo.LatestComment;

import java.util.List;

/**
 * created by wang-hai-cheng on 2019/1/7 at 14:03
 *
 * @author wang-hai-cheng
 */
public interface DashboardService {

    /**
     * 首页统计数据面板
     *
     * @return
     */
    List<BaseDataStatistics> calculateData();


    /**
     * 找出最新的一条评论
     *
     * @return
     */
    LatestComment findLatestComment();


    /**
     * 统计图的数据
     *
     * @return
     */
    List<Object[]> findTableStatistics();


}
