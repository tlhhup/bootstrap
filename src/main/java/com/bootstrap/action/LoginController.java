package com.bootstrap.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bootstrap.entity.User;
import com.bootstrap.service.UserService;

@Controller
@RequestMapping("/Login")
public class LoginController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,HttpSession session,Model model){
		User temp = userService.validateUserInfo(user);
		if(temp==null){
			model.addAttribute("error", "用户名密码错误!");
			return "login";
		}
		//将用户存到session中
		session.setAttribute("user", temp);
		return "main";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
}
