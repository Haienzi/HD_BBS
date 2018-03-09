package com.henu.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import com.henu.entity.User;
import com.henu.exception.UserExistException;
import com.henu.exception.UserNotExistException;
import com.henu.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private static final long serialVersionUID = 1L;

	private User user = new User();	
	@Override
	public User getModel() {
		return user;
	}
	
	public String save() {
		return SUCCESS;
	}
	
	public String register() {		
		Map<String, String> errors = new HashMap<String, String>();
		HttpServletRequest request = ServletActionContext.getRequest();
		boolean b = isTokenValid(request);
		if (!b) {
			errors.put("token", "请不要重复提交数据！！");
			request.setAttribute("errors", errors);
			request.setAttribute("form", user);
			return "fail";
		} else {
			//移除校验码
			request.getSession().removeAttribute("token");
		}
		UserService userService = new UserService();
		try {
			userService.register(user);
		} catch (UserExistException e) {
			errors.put("user", e.getMessage());
			request.setAttribute("errors", errors);
			request.setAttribute("form", user);			
			return "fail";
		} catch (Exception e) {
			errors.put("unknown", e.getMessage());
			request.setAttribute("errors", errors);
			request.setAttribute("form", user);
			return "fail";
		}		
		return SUCCESS;
	}	
	
	public String login() {
		HttpServletRequest request = ServletActionContext.getRequest();
		boolean b = isCodeValid(request);
		String tip = null;
		if (!b) {
			tip = "请输入验证码！";
			request.setAttribute("tip", tip);
			return "fail";
		}
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
		User u = null;
		if (username == null || username.isEmpty()) {// 检查用户名是否为空
			tip = "用户名不能为空！！！";
		} else if (password == null || password.isEmpty()) {// 检查密码是否为空
			tip = "密码不能为空！！！";
		} else { // 用户名与密码不为空，提交service层登录
			UserService userService = new UserService();
			try {
				u = userService.login(username, password);
			} catch (UserNotExistException e) {
				tip = "用户名或密码错误！！！";
			} catch (Exception e) {
				tip = e.getMessage();
			}
		}
		if (tip != null) {
			request.setAttribute("tip", tip);
			return "fail";
		} else if(u != null){
			request.getSession().setAttribute("user", u);
			return SUCCESS;
		}
		return "fail";
		
	}	
	
	private boolean isCodeValid(HttpServletRequest request) {
		String client_code = request.getParameter("code");
		if (client_code == null) {
			return false;
		}
		String server_code = (String) request.getSession().getAttribute("code");
		if (server_code == null) {
			return false;
		}
		if (!client_code.equals(server_code)) {
			return false;
		}
		return true;
	}

	private boolean isTokenValid(HttpServletRequest request) {
		String client_token = request.getParameter("token");
		if (client_token == null) {
			return false;
		}
		String server_token = (String) request.getSession().getAttribute("token");
		if (server_token == null) {
			return false;
		}
		if (!client_token.equals(server_token)) {
			return false;
		}
		return true;
	}
}
