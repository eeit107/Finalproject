package com.web.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.CartBean;
import com.web.store.model.ShopmemberBean;

@Repository
public class cartDAO {
	// 從RootAppConfig注入
	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	public List<CartBean> getAllCarts() {
		List<CartBean> allcarts = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CartBean z";
		allcarts = session.createQuery(hql).list();
		return allcarts;
	}

	public List<CartBean> getAllCartsbymember(ShopmemberBean shopmemberBean) {

		Session session = factory.getCurrentSession();
		String hql = "FROM CartBean z where z.shopmemberBean=:shopmemberBean";
		List<CartBean> allcarts = session.createQuery(hql).setParameter("shopmemberBean", shopmemberBean)
				.getResultList();
		return allcarts;
	}

	public CartBean getCartBeanByCartId(Integer cartID) {
		CartBean cb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CartBean cb where cb.cartID=:cartID";
		cb = (CartBean) session.createQuery(hql).setParameter("cartID", cartID).getSingleResult();
		return cb;
	}

	@SuppressWarnings("unchecked")
	// 指定日訂單
	public List<CartBean> getSellday(java.util.Date date) {
		String hql = "FROM CartBean bb WHERE bb.orderdate = :orderdate";
		List<CartBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("orderdate", date).getResultList();
		return list;
	}

	@SuppressWarnings({ "unused", "unchecked" })
	// 範圍找訂單
	public List<CartBean> getrangeSellday(java.util.Date datefirst, java.util.Date dateend) {
		String startdate = null;
		String overdate = null;
		String hql = "from CartBean bb where bb.orderdate >= :firstdate and bb.orderdate <= :enddate";
		List<CartBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("firstdate", datefirst).setParameter("enddate", dateend)
				.getResultList();
		return list;
	}

	public void inserttoCart(CartBean cb) {
		Session session = factory.getCurrentSession();
		session.save(cb);
	}

	public void update(CartBean cb) {
		Session session = factory.getCurrentSession();
		session.update(cb);
	}

}
