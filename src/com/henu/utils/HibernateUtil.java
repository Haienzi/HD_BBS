package com.henu.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static Configuration cfg = null;
	private static SessionFactory sessionFactory = null;
	
	static {
		cfg = new Configuration();
		cfg.configure();
		sessionFactory = cfg.buildSessionFactory();		
	}
	
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
