package com.bozkurt.turkninja.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bozkurt.turkninja.model.Developer;
@Repository
@Transactional
public class DeveloperRepositoryImpl implements DeveloperRepository {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	public Developer addDeveloper(Developer developer) {
		getCurrentSession().save(developer);
		return developer;
	}

	public void updateDeveloper(Developer developer) {

		
	}

	public Developer getDeveloper(int id) {
		Developer developer = (Developer) getCurrentSession().get(Developer.class, id);
		return developer;
	}
	
	public Developer getDeveloperByUsername(String username){
		String hql = "FROM Developer D WHERE D.username='"+username+"'";
		Session session= getCurrentSession();

		// @todo sonuç bulunamadığında listeden 0. kaydı alamayacaktır.
		Developer developer=(Developer)session.createQuery(hql).list().get(0);
		return developer;
	}

	public void deleteDeveloper(int id) {
		Developer developer = getDeveloper(id);
		if (developer != null)
			getCurrentSession().delete(developer);
	}

	@SuppressWarnings("unchecked")
	public List<Developer> getDevelopers() {
		return getCurrentSession().createQuery("from Developer").list();
	}
	@Override
	public Developer getDeveloperByEmailAndPAssword(String email,
			String password) {		
		String hql = "FROM Developer D WHERE D.email='"+email+"' and D.password='"+password+"'";
		Session session= getCurrentSession();

		// @todo sonuç bulunamadığında listeden 0. kaydı alamayacaktır.
		Developer developer=(Developer)session.createQuery(hql).list().get(0);
		return developer;
	}

}
