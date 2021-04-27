package com.zjl.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.zjl.cons.Const;

public class PathListener implements ServletContextListener {
	private Logger logger =LoggerFactory.getLogger(PathListener.class);
    public PathListener() {
    }

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		logger.info("项目启动关闭");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		//获取容器对象
		ServletContext context = sce.getServletContext();
		//获取项目上下文路径
		String path = context.getContextPath();
		//设置到作用于中
		context.setAttribute(Const.PATH, path);
		//打印日志
		logger.info("项目启动,path={}", path);
	}
   
	
}
