package com.zjl.mapper;

import com.zjl.bean.TAdmin;
import java.util.List;
import java.util.Map;

public interface TAdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TAdmin record);

    TAdmin selectByPrimaryKey(Integer id);

    List<TAdmin> selectAll();

    int updateByPrimaryKey(TAdmin record);

	List<TAdmin> getTAdminByLogin(Map<String, Object> paramMap);
}