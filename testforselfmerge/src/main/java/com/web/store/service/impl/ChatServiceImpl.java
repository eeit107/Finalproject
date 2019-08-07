package com.web.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ChatDao;
import com.web.store.model.ChatBean;

import com.web.store.service.ChatBeanService;

@Service
@Transactional
public class ChatServiceImpl implements ChatBeanService {
	@Autowired
	ChatDao chatDao;
	
	@Override
	public void addMsg(ChatBean Msg) {
		chatDao.addMsg(Msg);
		
	}
	@Override
	public ChatBean getChatById(int companyId) {
		return chatDao.getChatById(companyId);
	}

}
