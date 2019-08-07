package com.web.store.service.impl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.web.store.dao.CustomerInfoDao;
import com.web.store.model.AdvertiseBean;
import com.web.store.model.CustomerInfoBean;
import com.web.store.model.ProductBean;

import com.web.store.service.CustomerInfoBeanService;


@Transactional
@Service
public class CustomerInfoImpl implements CustomerInfoBeanService {
    @Autowired
	CustomerInfoDao dao;

	@Override
	public void save(CustomerInfoBean ci) {
		dao.save(ci);
		
	}

	@Override
	public List<CustomerInfoBean> getAllCustomerInfoBean() {
		
		return dao.getAllCustomerInfoBean();
	}
}