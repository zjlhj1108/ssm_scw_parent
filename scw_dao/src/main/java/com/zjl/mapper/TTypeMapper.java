package com.zjl.mapper;

import com.zjl.bean.TType;
import java.util.List;

public interface TTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TType record);

    TType selectByPrimaryKey(Integer id);

    List<TType> selectAll();

    int updateByPrimaryKey(TType record);
}