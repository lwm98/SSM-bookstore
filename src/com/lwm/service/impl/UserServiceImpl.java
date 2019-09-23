package com.lwm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lwm.service.UserService;
import com.lwm.dao.UserDao;
import com.lwm.po.User;
@Service("UserServiceImpl")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	public UserDao userDao;
	@Override
	public User findUser(String userid, String password) {
		// TODO Auto-generated method stub
		User user=this.userDao.findUser(userid, password);
		return user;
	}
	@Override
	public int insertUser(String userid, String password, String username) {
		// TODO Auto-generated method stub
		return userDao.insertUser(userid, password, username);
	}

}
