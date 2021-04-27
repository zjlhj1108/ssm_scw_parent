package com.zjl.mapper;

import com.zjl.bean.TReturn;
import java.util.List;

public interface TReturnMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TReturn record);

    TReturn selectByPrimaryKey(Integer id);

    List<TReturn> selectAll();

    int updateByPrimaryKey(TReturn record);
}