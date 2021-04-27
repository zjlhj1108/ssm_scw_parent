package com.zjl.mapper;

import com.zjl.bean.TMenu;
import java.util.List;

public interface TMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TMenu record);

    TMenu selectByPrimaryKey(Integer id);

    List<TMenu> selectAll();

    int updateByPrimaryKey(TMenu record);

	List<TMenu> getAllMenu();
}