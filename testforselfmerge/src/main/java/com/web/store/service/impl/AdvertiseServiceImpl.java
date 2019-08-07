package com.web.store.service.impl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.AdvertiseDao;

import com.web.store.model.AdvertiseBean;
import com.web.store.model.ProductBean;
import com.web.store.service.AdvertiseBeanService;


@Transactional
@Service
public class AdvertiseServiceImpl implements AdvertiseBeanService {
    @Autowired
	AdvertiseDao dao;

	@Override
	public void save(AdvertiseBean adv) {
		dao.save(adv);
		
	}

	@Override
	public List<AdvertiseBean> getAdvertiseByCompanyid(int companyId) {
		
		return dao.getAdvertiseByCompanyid(companyId);
	}
	@Override
	public List<AdvertiseBean> getAllAdvertiseBean() {
	
		return dao.getAllAdvertiseBean();
	}

	@Override
	public List<AdvertiseBean> getTop3highCpc() {
		System.out.println("取得click資料"+dao.getTop3highCpc());
		return dao.getTop3highCpc();
	}

	@Override
	public AdvertiseBean getAdvertiseById(int adId) {
	
		return dao.getAdvertiseById(adId);
	}

	@Override
	public void update(AdvertiseBean adv) {
		dao.update(adv);
		
	}

	@Override
	public void deletePAdbertiseBean(Integer adId) {
		dao.deletePAdbertiseBean(adId);		
	}

	@Override
	public List<AdvertiseBean> getTop3highCpcforbanner() {
		System.out.println("取得Banner資料"+dao.getTop3highCpcforbanner());

		return dao.getTop3highCpcforbanner();
	}


    
   
 
}