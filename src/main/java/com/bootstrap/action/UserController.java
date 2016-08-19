package com.bootstrap.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bootstrap.entity.User;
import com.bootstrap.service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {

	@Resource
	private UserService userService;
	
	@RequestMapping("/index")
	public String index(Model model){
		List<User> users = userService.findEntity(null);
		model.addAttribute("users", users);
		return "sys/user/userList";
	}
	
}
