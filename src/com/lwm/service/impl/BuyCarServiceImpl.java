package com.lwm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.lwm.dao.BuyCarDao;
import com.lwm.po.Book;
import com.lwm.po.User;
import com.lwm.service.BookService;
import com.lwm.service.BuyCarService;

@Service("BuyCarServiceImpl")
@Transactional
public class BuyCarServiceImpl implements BuyCarService{
	@Autowired
	public BuyCarDao BuyCarDao;
	@Override
	public List<Book> findAllBuy(String userid) {
		// TODO Auto-generated method stub
		
		return this.BuyCarDao.findAllBuy(userid);
	}
	
	@Override
	public int addBuyCar(String userid, String bookid) {
		BuyCarDao.addBuyCar(userid,bookid);
		// TODO Auto-generated method stub
		return 1;
	}

	@Override
	public int deleteBuyCar(String bookid) {
		// TODO Auto-generated method stub
		BuyCarDao.deleteBuyCar(bookid);
		return 1;
	}

}
