package com.lwm.service;

import java.util.List;

import com.lwm.po.Book;

public interface BuyCarService {
	public List<Book> findAllBuy(String userid);
	public int addBuyCar(String userid,String bookid);
	public int deleteBuyCar(String bookid);
}
