package com.zjl.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjl.api.TmenuService;
import com.zjl.bean.TMenu;
import com.zjl.mapper.TMenuMapper;
@Service
public class TmenuServiceImpl implements TmenuService {
	@Autowired
	private TMenuMapper menuMapper;
	@Override
	public List<TMenu> getAllMenu() {
		//查出来所有的菜单
		List<TMenu> allMenu = menuMapper.getAllMenu();
		//封装一下菜单
		List<TMenu> newList = new ArrayList<TMenu>();
		for(TMenu t:allMenu) {
			if(t.getPid()==0) {
				newList.add(t);
			}
		}
		return newList;
	}

}
