package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.User;

public class UserDao {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("sanjip");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	public void saveAndUpdateUser(User user) {
		// TODO Auto-generated method stub
		et.begin();
		em.merge(user);
		et.commit();
	}
	
	public User fetchUserByEmailAndPassword(String email, String password) {
		// TODO Auto-generated method stub
		Query query = em.createQuery("select s from User s where email=?1 and password=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		List<User> list = query.getResultList();
		if(list.isEmpty()) {
			return null;
		}
		return list.get(0);
	}
	
	public User fetchUserById(int id) {
		User user = em.find(User.class, id);
		return user;
	}

}
