package com.springweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spirngweb.model.User;
import com.springweb.dao.Message;
import com.springweb.dao.MessageDao;
import com.springweb.dao.UserDaoImpl;

@Service("userServiceImpl")
public class UserServiceImpl {
	private UserDaoImpl userDao;
	@Autowired
	private MessageDao messageDao;
	public UserServiceImpl() {
		System.out.println("user service successfully done");
	}

	

	@Autowired
	public void setUserService(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
	public boolean Insert(User user) {
		return userDao.Insert(user);
	}
	public List<User> getusers() {
		
		return userDao.getusers();
	}
	
	public void sendMessage(Message message) {
		System.out.println(message);
		messageDao.create(message);
	}



	public List<User> getContactlist() {
		// TODO Auto-generated method stub
		return userDao.getContactList();
	}



	public List<Message> getMessage(String username) {
		// TODO Auto-generated method stub
		return messageDao.getMessage(username);
	}
	
	public String getEmail(String reciever) {
		// TODO Auto-generated method stub
		return userDao.getEmail(reciever);
	}
}
