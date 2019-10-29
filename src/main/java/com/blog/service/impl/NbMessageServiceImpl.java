package com.blog.service.impl;

import com.blog.entity.NbMessage;
import com.blog.mapper.NbMessageMapper;
import com.blog.service.NbMessageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wang-hai-cheng
 * @since 2019-10-30
 */
@Service
public class NbMessageServiceImpl extends ServiceImpl<NbMessageMapper, NbMessage> implements NbMessageService {

}
