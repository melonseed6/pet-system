package com.project.platform.mapper;

import com.project.platform.entity.HelpMessage;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;


public interface HelpMessageMapper {
    List<HelpMessage> queryPage(Integer offset, Integer pageSize, @Param("query") Map<String, Object> query);

    int queryCount(@Param("query") Map<String, Object> query);

    @Select("SELECT * FROM help_message WHERE id = #{id}")
    HelpMessage selectById(Integer id);

    @Select("SELECT * FROM help_message")
    List<HelpMessage> list();

    int insert(HelpMessage entity);

    int updateById(HelpMessage entity);

    boolean removeByIds(List<Integer> ids);

}