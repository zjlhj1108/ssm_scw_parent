package com.zjl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zjl.api.AdminService;
import com.zjl.api.TmenuService;
import com.zjl.bean.TAdmin;
import com.zjl.bean.TMenu;
import com.zjl.cons.Const;
import com.zjl.exception.LoginExcpetion;

@Controller
public class DispatacherController {
	private Logger logger = LoggerFactory.getLogger(DispatacherController.class);
	@Autowired
	private AdminService adminService;
	@Autowired
	private TmenuService menuService;

	// 首页
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// 跳转到登录页面
	@RequestMapping(value = "/toLogin", method = RequestMethod.GET)
	public String toLogin() {
		return "login";
	}

	// 跳转到main页面
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(HttpSession session) {
		//需要查出来所有的菜单
		List<TMenu> menuList =  menuService.getAllMenu();
		//将菜单放在作用域中
		session.setAttribute("menuList", menuList);
		//打印一下
		logger.debug(menuList.toString());
		return "main";
	}

	// 登录
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(String loginacct, String userpwsd, HttpSession session, HttpServletRequest request) {
		// 获取参数,并且装在map集合中
		Map<String, Object> paramMap = new HashMap<String, Object>();
		try {
//			//第一次加密
//			userpwsd =DigestUtils.md5DigestAsHex(userpwsd.getBytes("utf-8"));
//			//对密码进行加密
//			userpwsd =DigestUtils.md5DigestAsHex(userpwsd.getBytes("utf-8"));
			//存放数据
			paramMap.put(Const.LOGINACCT, loginacct);
			paramMap.put(Const.USERPSWD, userpwsd);
			// 查询用户
			TAdmin admin = adminService.getTAdminByLogin(paramMap);
			// 将用户放在session域中
			session.setAttribute("admin", admin);
			// 跳转到主界面
			return "redirect:/main";
		} catch (LoginExcpetion e) {
			// 将异常放在作用域中，返回登录页面，并且将错误信息展示出来
			request.setAttribute("message", e.getMessage());
			return "login";
		} catch (Exception e) {
			// 将异常放在作用域中，返回登录页面，并且将错误信息展示出来
			request.setAttribute("message", "登录异常");
			return "login";
		}
	}

	// 登出
	@RequestMapping(value = "/loginOut")
	public String LoginOut(HttpSession session) {
		if(session!=null) {
			session.removeAttribute("admin");
			session.invalidate();
		}
		return "redirect:/index";
	}
}
