package com.web.store.dao.impl;

import java.util.ArrayList;


import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.CustomerInfoDao;
import com.web.store.model.AdvertiseBean;
import com.web.store.model.CustomerInfoBean;
import com.web.store.model.ProductBean;


@Repository
public class CustomerInfoDaoImpl implements CustomerInfoDao {
	@Autowired
    SessionFactory factory;
	@Override
	public void save(CustomerInfoBean ci) {
		  Session session = factory.getCurrentSession();

		   
		    session.save(ci);	 
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<CustomerInfoBean> getAllCustomerInfoBean() {
		   String hql = "FROM CustomerInfoBean";
		    Session session = null;
		    List<CustomerInfoBean> list = new ArrayList<>();
		    session = factory.getCurrentSession();
		    list = session.createQuery(hql).getResultList();
		    return list;
		}
}

