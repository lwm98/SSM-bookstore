package com.lwm.service;

import com.lwm.po.User;

public interface UserService {
	public User findUser(String userid,String password);
	public int insertUser(String userid,String password,String username);
}
