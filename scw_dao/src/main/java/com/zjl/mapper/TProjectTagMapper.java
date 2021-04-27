package com.zjl.mapper;

import com.zjl.bean.TProjectTag;
import java.util.List;

public interface TProjectTagMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TProjectTag record);

    TProjectTag selectByPrimaryKey(Integer id);

    List<TProjectTag> selectAll();

    int updateByPrimaryKey(TProjectTag record);
}