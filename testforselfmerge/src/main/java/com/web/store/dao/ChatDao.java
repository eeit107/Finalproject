package com.web.store.dao;

import com.web.store.model.ChatBean;

public interface ChatDao {
	
	void addMsg(ChatBean Msg);
	
	ChatBean  getChatById(int companyId);

}
