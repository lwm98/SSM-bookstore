package com.lwm.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lwm.po.Book;
import com.lwm.po.User;
import com.lwm.service.*;

@Controller
public class PageController {
    @RequestMapping(value="/reg.action")
    public String registerForm(){
        //动态跳转到注册
        return "register";
    }
    
    @RequestMapping(value="/home.action")
    public String home(){
        //动态跳转到注册
        return "home";
    }
    
    @Autowired
	private UserService userService;
	@RequestMapping(value="/register.action",method=RequestMethod.POST)
	public String login(String userid,String password,String username,Model model,HttpSession session){
		System.out.println(username);
		int a=userService.insertUser(userid, password,username);
		if(a==1){
			return "login";
		}
		
		return "reg.action";
	}
//	加入购物车
	
	@Autowired
	private BuyCarService BuyCarService;
	@RequestMapping(value="/addbuycar.action")
    public void addbuycar(String bookid,HttpSession session){
        //接收ajax数据
		User aaaa=(User) session.getAttribute("USER_SESSION");
		System.out.println(bookid+"后端数据获取成功");
		System.out.println(aaaa.getUser_id()+"后端数据获取成功");
		//		插入数据
		int b=BuyCarService.addBuyCar(aaaa.getUser_id(), bookid);
		if(b==1){
			System.out.println("加入购物车成功");
		}
    }
//	删除一个购物车
	@RequestMapping(value="/deleteonebuycar.action")
    public String deleteonebuycar(String bookid){
		System.out.println("删除"+bookid+"后端数据获取成功");
		//		插入数据
		int c=BuyCarService.deleteBuyCar(bookid);
		if(c==1){
			System.out.println("删除"+bookid+"成功");
		}
		return "redirect:buycar.action";
    }
//	删除多个购物车
	@RequestMapping(value="/deletesomebuycar.action")
    public String deletesomebuycar(@RequestParam("deleteid") String[] deleteid){
		for(int i=0;i<deleteid.length;i++){
			int c=BuyCarService.deleteBuyCar(deleteid[i]);
			if(c==1){
				System.out.println("删除"+deleteid[i]+"成功");
			}
			
		}
		return "redirect:buycar.action";
		
    }
	
//跳转购物车
	
	@RequestMapping(value="/buycar.action")
    public String buycar(Model model,HttpSession session){
        //动态跳转到购物车
		User aaa=(User) session.getAttribute("USER_SESSION");
		List<Book> book1= BuyCarService.findAllBuy(aaa.getUser_id());
		session.setAttribute("BUY_SESSION", book1);
		return "buycar";
	
    }
}
