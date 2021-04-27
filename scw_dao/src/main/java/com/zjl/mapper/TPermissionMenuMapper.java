package com.zjl.mapper;

import com.zjl.bean.TPermissionMenu;
import java.util.List;

public interface TPermissionMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TPermissionMenu record);

    TPermissionMenu selectByPrimaryKey(Integer id);

    List<TPermissionMenu> selectAll();

    int updateByPrimaryKey(TPermissionMenu record);
}