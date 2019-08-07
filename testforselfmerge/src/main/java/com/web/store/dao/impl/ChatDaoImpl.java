package com.web.store.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ChatDao;
import com.web.store.model.ChatBean;
@Repository
public class ChatDaoImpl implements ChatDao {
	@Autowired
    SessionFactory factory;
	@Override
	public void addMsg(ChatBean Msg) {
	    Session session = factory.getCurrentSession();

	    session.save(Msg);	    
	}
	@Override
	public ChatBean getChatById(int companyId) {
		ChatBean cb = null;
	    Session session = factory.getCurrentSession();
	    cb = session.get(ChatBean.class, companyId);
	    System.out.println("cbDao"+ cb);
	    return cb;
	}	
}
