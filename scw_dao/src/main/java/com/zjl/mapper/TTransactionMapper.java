package com.zjl.mapper;

import com.zjl.bean.TTransaction;
import java.util.List;

public interface TTransactionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TTransaction record);

    TTransaction selectByPrimaryKey(Integer id);

    List<TTransaction> selectAll();

    int updateByPrimaryKey(TTransaction record);
}