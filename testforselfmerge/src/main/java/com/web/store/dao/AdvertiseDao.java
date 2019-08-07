package com.web.store.dao;

import java.util.List;


import com.web.store.model.AdvertiseBean;

import com.web.store.model.ProductBean;


public interface AdvertiseDao {
	
	public void save(AdvertiseBean adv) ;
	AdvertiseBean  getAdvertiseById(int adId);
	List<AdvertiseBean> getAdvertiseByCompanyid(int companyId) ;
	List<AdvertiseBean>  getAllAdvertiseBean(); 
	public List<AdvertiseBean> getTop3highCpc();
	public void deletePAdbertiseBean(Integer adId);
	void update(AdvertiseBean adv);
	public List<AdvertiseBean> getTop3highCpcforbanner() ;
}
