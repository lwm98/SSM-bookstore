package com.lwm.dao;

import org.apache.ibatis.annotations.Param;

import com.lwm.po.User;

public interface UserDao {
	public User findUser(@Param("userid") String userid,
						 @Param("password") String password);
	public int insertUser(@Param("userid") String userid,
			 @Param("password") String password,
			 @Param("username") String username);
}
