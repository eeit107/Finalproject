package com.web.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.web.store.model.CartBean;
import com.web.store.model.CartItemBean;
@Repository
public class itemDAO {
	@Autowired
	SessionFactory factory;
	
	public void inserttoCart(CartItemBean cib) {
		Session session = factory.getCurrentSession();
		session.save(cib);
	}
	
	public List<CartItemBean> getsameproduct(int productId) {
		Session session = factory.getCurrentSession();
		String hql="From CartItemBean cib where cib.productBean_productId =:productId"; 
		List<CartItemBean> list = new ArrayList<>();
		int count=0;
		list = session.createQuery(hql).setParameter("productId", productId).getResultList();
		if (list!=null) {
		}
		return list;
	}
	
	public List<CartItemBean> getsameorder(CartBean cb){
		List<CartItemBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		String hql="From CartItemBean cib where cib.cartBean=:cartBean";
		list = session.createQuery(hql).setParameter("cartBean", cb).getResultList();
		return list;
	}
	
//	public int update() {
//		Session session = factory.getCurrentSession();
//		String hql="UPDATE CartItemBean  cib where cib.productBean_productId =:productId "
//	}
	
}
