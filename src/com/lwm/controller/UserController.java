package com.lwm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lwm.service.*;
import com.lwm.po.*;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private BookService BookService;
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public String login(String userid,String password,Model model,HttpSession session){
		User user =userService.findUser(userid, password);
		
		List<Book> book= BookService.findBook();
		if(user!=null){
			session.setAttribute("USER_SESSION", user);
			session.setAttribute("BOOK_SESSION", book);
			return "home";
		}
		model.addAttribute("msg","账号或密码输入错误");
		return "login";
	}

	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/loginout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}
}
