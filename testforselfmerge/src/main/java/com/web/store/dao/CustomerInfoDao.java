package com.web.store.dao;

import java.util.List;

import com.web.store.model.AdvertiseBean;
import com.web.store.model.CustomerInfoBean;
import com.web.store.model.ProductBean;


public interface CustomerInfoDao {
	
	public void save(CustomerInfoBean ci) ;
	public List<CustomerInfoBean> getAllCustomerInfoBean();
	
}
