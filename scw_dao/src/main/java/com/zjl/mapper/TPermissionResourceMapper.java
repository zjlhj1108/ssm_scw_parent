package com.zjl.mapper;

import com.zjl.bean.TPermissionResource;
import java.util.List;

public interface TPermissionResourceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TPermissionResource record);

    TPermissionResource selectByPrimaryKey(Integer id);

    List<TPermissionResource> selectAll();

    int updateByPrimaryKey(TPermissionResource record);
}