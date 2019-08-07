package com.web.store.service;

import com.web.store.model.ChatBean;

public interface ChatBeanService {
	
	void addMsg(ChatBean Msg);
	ChatBean  getChatById(int companyId);

}
