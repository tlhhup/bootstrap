package com.bootstrap.service;

import com.bootstrap.entity.User;

public interface UserService extends BaseService<User>{
	
	/**
	 * 用户登录校验
	 * @param user
	 * @return
	 */
	User validateUserInfo(User user);

}
