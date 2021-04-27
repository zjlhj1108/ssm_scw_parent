package com.zjl.mapper;

import com.zjl.bean.TRolePermission;
import java.util.List;

public interface TRolePermissionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TRolePermission record);

    TRolePermission selectByPrimaryKey(Integer id);

    List<TRolePermission> selectAll();

    int updateByPrimaryKey(TRolePermission record);
}