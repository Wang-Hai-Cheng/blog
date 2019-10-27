//package com.blog.security;
//
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.dao.UserMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import java.util.ArrayList;
//import java.util.Collection;
//import java.util.List;
//
//@Configuration
//public class MyUserDetailService implements UserDetailsService {
//    @Autowired
//    BCryptPasswordEncoder bCryptPasswordEncoder;
//    @Autowired
//    UserMapper userMapper;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        //权限列表类型
////        Collection<GrantedAuthority> authorities = authorities();
//
//        //比如username是前端传过来的账号，我们拿到数据库去查，如果没查到就返回null,抛异常
//        com.model.User u = new com.model.User();
//        u.setUsername(username);
//        com.model.User user = userMapper.selectOne(new QueryWrapper<>(u));
//        if (user == null) {
//            return null;
//        }
//
//        //否则
////        String password = bCryptPasswordEncoder.encode(user.getPassword());//比如这是数据查询来的密码，拿数据库的密码和前端传来的密码对比
//        //认证+添加权限列表
//        String[] s = new String[1];
//        s[0] = user.getAuthority();
//        return new User(username, user.getPassword(), authorities(s));
//    }
//
//    //获取数据库中的权限,新建一种权限列表类型
//    private Collection<GrantedAuthority> authorities(String[] auths) {
//        List<GrantedAuthority> authorities = new ArrayList<>();
//        //增加 添加权限 修改权限
//        for (String auth : auths) {
//            authorities.add(new SimpleGrantedAuthority(auth));
//        }
//        return authorities;
//    }
//}
