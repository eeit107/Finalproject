package com.web.init;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.web.store.dao.UserDao;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;
import com.web.store.service.impl.UserServiceImpl;

//@Service("SecurityUserDetailsService")
@Service
public class SecurityUserDetailsService implements UserDetailsService {

	@Autowired
	private UserService userService;

	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {	
		
		//UserService userService = new UserServiceImpl();
		ShopmemberBean userBean = userService.findByAccount(userId);
		////SecurityUserDetailsService2 userService = new SecurityUserDetailsService2();
		//ShopmemberBean userBean = userService.findByAccount(userId);
		if(userBean != null) {
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
	
			authorities.add(new SimpleGrantedAuthority(userBean.getRole()));
			//user.getrole
			boolean isEnabled = true;
		
			return new User(userBean.getMemberid(),new BCryptPasswordEncoder().encode(userBean.getPassword()), isEnabled, true, true, true, authorities);
		}
		
		throw new UsernameNotFoundException("認證錯誤");

	}

}
