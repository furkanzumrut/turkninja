package com.bozkurt.turkninja.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bozkurt.turkninja.model.Article;
@Repository
@Transactional
public class ArticleRepositoryImpl implements ArticleRepository {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	public Article addArticle(Article article) {
		getCurrentSession().save(article);
		return article;
	}

	public void updateArticle(Article Article) {

		
	}

	public Article getArticle(int id) {
		Article article = (Article) getCurrentSession().get(Article.class, id);
		return article;
	}
	
	public void deleteArticle(int id) {
		Article article = getArticle(id);
		if (article != null)
			getCurrentSession().delete(article);
	}

	@SuppressWarnings("unchecked")
	public List<Article> getArticles() {
		return getCurrentSession().createQuery("from Article").list();
	}
}
