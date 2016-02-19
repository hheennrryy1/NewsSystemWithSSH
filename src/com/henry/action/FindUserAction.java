package com.henry.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.henry.entity.User;
import com.henry.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class FindUserAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Autowired
	private UserService userService;
	private User user;
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean exist = userService.checkUser(user);
		if(!exist) {
			out.print("用户名不存在或密码错误!!");
			out.flush();
		} else {
			out.print("success");
			out.flush();
			session.setMaxInactiveInterval(60*60*4); //4小时 默认30分钟
			session.setAttribute("userName", user.getUserName());
			
		}
		out.close();
		return null;
	}

	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
}
