package com.zjl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjl.api.AdminService;
import com.zjl.bean.TAdmin;
import com.zjl.cons.Const;
import com.zjl.exception.LoginExcpetion;
import com.zjl.mapper.TAdminMapper;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private TAdminMapper tAdminMapper;
	@Override
	public List<TAdmin> getAllTAdmin() {
		// TODO Auto-generated method stub
		return tAdminMapper.selectAll();
	}
	@Override
	public TAdmin getTAdminByLogin(Map<String, Object> paramMap) {
		//获取这个对象
		List<TAdmin> adminList = tAdminMapper.getTAdminByLogin(paramMap);
		//用户不存在
		if(adminList==null||adminList.size()==0) {
			//抛出异常
			throw new LoginExcpetion(Const.LOGINACCT_ERROR);
		}
		//如果用户密码不正确
		if(!adminList.get(0).getUserpswd().equals(paramMap.get(Const.USERPSWD))) {
			//抛出异常
			throw new LoginExcpetion(Const.USERPSWD_ERROR);
		}
		//返回结果
		return adminList.get(0);
	}
	@Override
	public List<TAdmin> selectAllAdmin() {
		// TODO Auto-generated method stub
		return tAdminMapper.selectAll();
	}
	@Override
	public TAdmin getAdmin(Integer id) {
		// TODO Auto-generated method stub
		return tAdminMapper.selectByPrimaryKey(id);
	}
	@Override
	public void saveOrUpdate(TAdmin admin) {
		// TODO Auto-generated method stub
		Integer id = admin.getId();
		//根据id获取这个对象
		TAdmin tadmin = getAdmin(id);
		if(tadmin==null) {
			//不存在保存
			tAdminMapper.insert(admin);
		}else {
			//存在更新
			tAdminMapper.updateByPrimaryKey(admin);
		}
	}
	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		tAdminMapper.deleteByPrimaryKey(id);
	}
 
}
