package com.zjl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zjl.api.AdminService;
import com.zjl.bean.TAdmin;
import com.zjl.cons.Const;
import com.zjl.utils.DateUtils;
import com.zjl.utils.Md5Utils;

@Controller
public class TAdminController {
	@Autowired
	private AdminService adminService;
	// 跳转到用户管理页面,需要分页查找
  @RequestMapping(value="/admin/index")
  public String toAdminManage(@RequestParam(value="pageNum",defaultValue = "1",required = false) Integer pageNum,
		  @RequestParam(value="pageSize",defaultValue = "10",required = false) Integer pageSize,Model model ) {
	  //开启分页
	  PageHelper.startPage(pageNum,Const.PAGESIZE);
	  //查询所有的用户
	  List<TAdmin> adminList =adminService.selectAllAdmin();
	  //封装到pageinfo中
	  PageInfo<TAdmin> page = new PageInfo<TAdmin>(adminList, Const.NAVEGATOR);
	  //将集合放入Mode中
	  model.addAttribute("PAGE", page);
	  return "admin/index";
	  
   }
  //跳转到添加页面
  @RequestMapping(value="/admin/toAdd")
  public String toAdd(HttpServletRequest request) {
	  //在域对象放一个对象
	  request.setAttribute("addOrUpdate", new TAdmin());
	  return "admin/add";
	  
   }
  
  //跳转到添加页面
  @RequestMapping(value="/admin/doAdd")
  public String doAdd(TAdmin admin) throws Exception {
	  //存入数据库
	  //设置密码和创建时间
	  admin.setUserpswd(Md5Utils.md5String(Md5Utils.md5String(Const.COMMON_PASSWORD)));
	  admin.setCreatetime(DateUtils.formatDate(Const.COMMON_DATE_FORMAT));
	  adminService.saveOrUpdate(admin);
	  return "redirect:/admin/index?pageNum="+Integer.MAX_VALUE;
	  
   }
  
  //跳转到修改页面
  @RequestMapping(value="/admin/toEdit")
  public String toEdit(Integer id,HttpServletRequest request) {
	  //查询这个对象根据id
	  TAdmin admin = adminService.getAdmin(id);
	  //在域对象放一个对象
	  request.setAttribute("addOrUpdate", admin);
	  return "admin/add";
	  
   }
  
  //修改这个对象
  @RequestMapping(value="/admin/doEdit",method=RequestMethod.PUT)
  public String doEdit(String pageNum,Integer id,String loginacct,String username,String email) {
	  //查询这个对象根据id
	  TAdmin admin = adminService.getAdmin(id);
	  admin.setEmail(email);
	  admin.setLoginacct(loginacct);
	  admin.setUsername(username);
	  adminService.saveOrUpdate(admin);
	  return "redirect:/admin/index?pageNum="+pageNum;
	  
   }
  
  //修改这个对象
  @RequestMapping(value="/admin/doDelete")
  public String doDelete(String pageNum,Integer id) {
	  //查询这个对象根据id
	  adminService.deleteById(id);
	  return "redirect:/admin/index?pageNum="+pageNum;
	  
   }
}
