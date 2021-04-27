package com.zjl.mapper;

import com.zjl.bean.TResource;
import java.util.List;

public interface TResourceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TResource record);

    TResource selectByPrimaryKey(Integer id);

    List<TResource> selectAll();

    int updateByPrimaryKey(TResource record);
}