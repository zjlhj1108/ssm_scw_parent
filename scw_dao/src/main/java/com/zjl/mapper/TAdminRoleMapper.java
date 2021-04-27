package com.zjl.mapper;

import com.zjl.bean.TAdminRole;
import java.util.List;

public interface TAdminRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TAdminRole record);

    TAdminRole selectByPrimaryKey(Integer id);

    List<TAdminRole> selectAll();

    int updateByPrimaryKey(TAdminRole record);
}