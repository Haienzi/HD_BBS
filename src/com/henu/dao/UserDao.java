package com.henu.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.henu.entity.User;
import com.henu.utils.HibernateUtil;

public class UserDao {

	public User login(String username, String pwd) {
		return null;
	}

	public boolean save(User user) {
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		try {
			session.save(user);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();			
		}finally {
			session.close();
		}
		return true;
	}

	public User find(String username) {
		return null;
	}

}
