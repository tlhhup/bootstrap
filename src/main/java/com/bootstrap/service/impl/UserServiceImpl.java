package com.bootstrap.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.bootstrap.entity.User;
import com.bootstrap.service.UserService;
import com.bootstrap.util.ValidateUtils;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Resource(name="userMapper")
	@Override
	public void setMapper(Mapper<User> mapper) {
		super.setMapper(mapper);
	}

	@Override
	public User validateUserInfo(User user) {
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		Example example=new Example(User.class);
		Criteria criteria = example.createCriteria();
		criteria.andCondition("userName=", user.getUserName());
		criteria.andCondition("password=", user.getPassword());
		List<User> users = this.getEntityByCondition(example);
		return ValidateUtils.isValidate(users)?users.get(0):null;
	}

}
