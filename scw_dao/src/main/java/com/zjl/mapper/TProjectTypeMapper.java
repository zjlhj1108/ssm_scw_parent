package com.zjl.mapper;

import com.zjl.bean.TProjectType;
import java.util.List;

public interface TProjectTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TProjectType record);

    TProjectType selectByPrimaryKey(Integer id);

    List<TProjectType> selectAll();

    int updateByPrimaryKey(TProjectType record);
}