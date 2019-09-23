package com.lwm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lwm.dao.BookDao;
import com.lwm.po.Book;
import com.lwm.po.User;
import com.lwm.service.BookService;

@Service("BookServiceImpl")
@Transactional
public class BookServiceImpl implements BookService{
	@Autowired
	public BookDao BookDao;
	@Override
	public List<Book> findBook() {
		// TODO Auto-generated method stub
		
		return this.BookDao.findBook();
	}

}
