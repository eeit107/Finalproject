package com.web.store.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.web.store.model.ShopmemberBean;

@Component
public interface UserService {
	
	public ShopmemberBean findByAccount(String memberid);
	public ShopmemberBean login(String memberid, String password);
	int saveMember(ShopmemberBean sb);
	void update(ShopmemberBean bean);
	public String servImg(MultipartFile imgfile) throws Exception;
	public List<ShopmemberBean> selectByRole(String role);
	public ShopmemberBean findByPK(Integer seqNo);
	public List<ShopmemberBean>selectAll();
	public void delete(int seqNo);
}


