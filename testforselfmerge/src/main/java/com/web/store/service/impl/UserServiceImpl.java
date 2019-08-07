package com.web.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.nio.file.Files;

import com.web.store.dao.UserDao;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;
import com.web.utils.BaseConstants;

//@Service
@Component
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public ShopmemberBean login(String memberid, String password) {
		ShopmemberBean bean = userDao.findByAccount(memberid);
		if(bean!=null && password.length()!=0) {
			if(bean.getPassword().equals(password)) {
				return bean;
			}
		}
		return null;
	}
	
//	public ShopmemberBean register(ShopmemberBean bean) {
//		ShopmemberBean result = null;
//		if(bean!=null) {
//			result = userDao.addMember(bean);
//		}
//		return result;
//	}

	public ShopmemberBean findByPK(Integer seqNo) {
		
		return userDao.findByPK(seqNo);
	}
	
	public ShopmemberBean findByAccount(String memberid) {
		
		return userDao.findByAccount(memberid);
	}

	@Override
	public int saveMember(ShopmemberBean sb) {
		int count = 0;

		userDao.saveMember(sb);
		count++;

		return count;
	}
	
	@Override
	public void  update(ShopmemberBean bean) {
		
		userDao.update(bean);
		
		
	}
	public String servImg(MultipartFile imgfile)throws Exception {
	
		byte[] bytes=imgfile.getBytes();
		//String servcepath= new File(".").getCanonicalPath();
		String path= BaseConstants.imageFilePath;
		File directory=new File(path);
		if(!directory.exists()){
			directory.mkdir();
			}
		
		String imgpath=path+imgfile.getOriginalFilename();
		String dbpath=imgfile.getOriginalFilename();
		if(bytes!=null) {
			Path imagepath=Paths.get(imgpath);
//			System.out.println("servcepath="+servcepath);
			System.out.println("path="+path);
			System.out.println("imgpath="+imgpath);
			Files.write(imagepath, bytes);
			}else {
				
			}return dbpath;
		
		
	}
	public List<ShopmemberBean> selectByRole(String role){
		
		return userDao.selectByRole(role);
	}
	public List<ShopmemberBean> selectAll(){
		return userDao.selectAll();
		
	}
	 @Override
	 public void delete(int seqNo) {
	  userDao.delete(seqNo);
	  
	 }
}




