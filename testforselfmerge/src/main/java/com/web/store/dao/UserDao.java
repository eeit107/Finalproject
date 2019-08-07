package com.web.store.dao;

import java.util.List;

import com.web.store.model.ShopmemberBean;

public interface UserDao {


	void delete(int seqNo);

	public int saveMember(ShopmemberBean bean);

	public abstract List<ShopmemberBean> selectAll();

	public abstract ShopmemberBean findByPK(Integer seqNo);

	public abstract ShopmemberBean findByAccount(String memberid);

	public void update(ShopmemberBean bean);

	public abstract ShopmemberBean updateBasic(String password, String username, String email, String phone);

	public ShopmemberBean getRole(String role);
	
	public List<ShopmemberBean> selectByRole(String role);

}

