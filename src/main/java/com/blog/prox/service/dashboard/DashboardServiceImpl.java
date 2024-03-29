//package com.blog.prox.service.dashboard;
//
//import com.baomidou.mybatisplus.core.conditions.Wrapper;
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.blog.entity.NbArticle;
//import com.blog.mapper.*;
//import com.blog.prox.entity.BaseDataStatistics;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.time.LocalDate;
//import java.time.LocalDateTime;
//import java.util.ArrayList;
//import java.util.List;
//
///**
// * created by wang-hai-cheng on 2019-01-08 at 01:24
// *
// * @author wang-hai-cheng
// */
//@Transactional
//@Service
//public class DashboardServiceImpl implements DashboardService {
//
//    private final NbArticleMapper nbArticleMapper;
//    private final NbNoteMapper nbNoteMapper;
//    private final NbMessageMapper nbMessageMapper;
//    private final NbCommentMapper nbCommentMapper;
//    private final SysUserMapper sysUserMapper;
//    private final SysLoggerMapper sysLoggerMapper;
//
//    @Autowired
//    public DashboardServiceImpl(NbArticleMapper nbArticleMapper, NbNoteMapper nbNoteMapper, NbMessageMapper nbMessageMapper, NbCommentMapper nbCommentMapper, SysUserMapper sysUserMapper, SysLoggerMapper sysLoggerMapper) {
//
//        this.nbArticleMapper = nbArticleMapper;
//        this.nbNoteMapper = nbNoteMapper;
//        this.nbMessageMapper = nbMessageMapper;
//        this.nbCommentMapper = nbCommentMapper;
//        this.sysUserMapper = sysUserMapper;
//        this.sysLoggerMapper = sysLoggerMapper;
//    }
//
//    private String addLike(String item) {
//        return "%" + item + "%";
//    }
//
//    @Override
//    public List<BaseDataStatistics> calculateData() {
//        nbArticleMapper.selectCount((Wrapper<NbArticle>)new QueryWrapper().ne("draft",null));
//        long articles = articleRepository.countByDraft(true);
//        long notes = noteRepository.count();
//        long users = userRepository.count();
//        long messages = messageRepository.count();
//        long comments = commentRepository.count();
//        int ips = loggerRepository.countByIpAddr();
//        int todayIps = loggerRepository.countByIpAddrAndTimeLike(addLike(LocalDate.now().toString()));
//        int todayComments = commentRepository.countByPostLike(addLike(LocalDate.now().toString()));
//        int todayUsers = userRepository.countByCreateLike(addLike(LocalDate.now().toString()));
//        BaseDataStatistics d1 = BaseDataStatistics.builder().text("文章数量").sum(articles).url("#/article").build();
//        BaseDataStatistics d2 = BaseDataStatistics.builder().text("笔记数量").sum(notes).url("#/note").build();
//        BaseDataStatistics d3 = BaseDataStatistics.builder().text("用户数量").sum(users).url("#/users").build();
//        BaseDataStatistics d4 = BaseDataStatistics.builder().text("留言数量").sum(messages).url("#/message").build();
//        BaseDataStatistics d5 = BaseDataStatistics.builder().text("访问ip数量").sum(ips).build();
//        BaseDataStatistics d6 = BaseDataStatistics.builder().text("今日访问ip").sum(todayIps).build();
//        BaseDataStatistics d7 = BaseDataStatistics.builder().text("今日评论").sum(todayComments).build();
//        BaseDataStatistics d8 = BaseDataStatistics.builder().text("今日新增用户").sum(todayUsers).build();
//        BaseDataStatistics d9 = BaseDataStatistics.builder().text("评论数量").sum(comments).url("#/comment").build();
//        List<BaseDataStatistics> list = new ArrayList<>(9);
//        list.add(d1);
//        list.add(d2);
//        list.add(d3);
//        list.add(d4);
//        list.add(d9);
//        list.add(d5);
//        list.add(d6);
//        list.add(d7);
//        list.add(d8);
//        return list;
//    }
//
//    @Override
//    public LatestComment findLatestComment() {
//        NBComment comment = commentRepository.findLastestComment();
//        if (comment != null) {
//            Optional<NBArticle> article = articleRepository.findById(comment.getArticleId());
//            if (!article.isPresent()) {
//                return LatestComment.builder()
//                        .articleId(0L)
//                        .articleTitle("暂无")
//                        .articleDate(LocalDateTime.now())
//                        .comment(comment).build();
//            }
//            return LatestComment.builder()
//                    .articleId(article.get().getId())
//                    .articleTitle(article.get().getTitle())
//                    .articleDate(article.get().getPost())
//                    .comment(comment).build();
//        }
//        return LatestComment.builder()
//                .articleId(0L)
//                .articleTitle("暂无")
//                .articleDate(LocalDateTime.now())
//                .comment(null).build();
//
//    }
//
//    @Override
//    public List<Object[]> findTableStatistics() {
//        return loggerRepository.findTableData(10);
//    }
//
//}
