package com.project.platform.service.impl;

import com.project.platform.entity.HelpMessage;
import com.project.platform.exception.CustomException;
import com.project.platform.mapper.HelpMessageMapper;
import com.project.platform.service.HelpMessageService;
import com.project.platform.utils.CurrentUserThreadLocal;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import com.project.platform.vo.PageVO;

import java.util.List;
import java.util.Map;

/**
 * 求助信息
 */
@Service
public class HelpMessageServiceImpl  implements HelpMessageService {
    @Resource
    private HelpMessageMapper helpMessageMapper;
    
    @Override
    public PageVO<HelpMessage> page(Map<String, Object> query, Integer pageNum, Integer pageSize) {
        PageVO<HelpMessage> page = new PageVO();
        if (query.containsKey("onlyYou") && Boolean.valueOf(query.get("onlyYou").toString())) {
            Integer userId = -1;
            if (CurrentUserThreadLocal.getCurrentUser().getType().equals("USER")) {
                //普通用户看自己才有效果
                userId = CurrentUserThreadLocal.getCurrentUser().getId();
            }
            query.put("userId", userId);
        }
        List<HelpMessage> list = helpMessageMapper.queryPage((pageNum - 1) * pageSize, pageSize, query);
        page.setList(list);
        page.setTotal(helpMessageMapper.queryCount(query));
        return page;
    }

    @Override
    public HelpMessage selectById(Integer id) {
        HelpMessage helpMessage = helpMessageMapper.selectById(id);
        return helpMessage;
    }

    @Override
    public List<HelpMessage> list() {
        return helpMessageMapper.list();
    }
    @Override
    public void insert(HelpMessage entity) {
        if (!CurrentUserThreadLocal.getCurrentUser().getType().equals("USER")) {
            throw new CustomException("普通用户才允许添加");
        }
        entity.setUserId(CurrentUserThreadLocal.getCurrentUser().getId());
        check(entity);
        helpMessageMapper.insert(entity);
    }
    @Override
    public void updateById(HelpMessage entity) {
        check(entity);
        helpMessageMapper.updateById(entity);
    }
    private void check(HelpMessage entity) {

    }
    @Override
    public void removeByIds(List<Integer> ids) {
        helpMessageMapper.removeByIds(ids);
    }
}
