package com.lwm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lwm.po.*;

public interface BuyCarDao {
	public List<Book> findAllBuy(@Param("userid") String userid);
	public int addBuyCar(@Param("userid") String userid,
						@Param("bookid") String bookid);
	public int deleteBuyCar(@Param("bookid") String bookid);
}
