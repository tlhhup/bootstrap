package com.bootstrap.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.util.DigestUtils;

import com.bootstrap.entity.User;
import com.bootstrap.service.UserService;

public class UserServiceTest {

	private ApplicationContext act;

	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("beans.xml");
	}
	
	@Test
	public void save(){
		UserService userService = act.getBean(UserService.class);
		User user=new User();
		user.setUserName("admin");
		user.setPassword(DigestUtils.md5DigestAsHex("admin".getBytes()));
		userService.saveEntity(user);
	}
	
}
