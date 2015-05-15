package com.bozkurt.turkninja.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bozkurt.turkninja.model.Article;
import com.bozkurt.turkninja.repository.ArticleRepository;
@Service
@Transactional
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	ArticleRepository articleRepository;
	
	@Override
	public void save(Article article) {
		articleRepository.addArticle(article);
	}

	@Override
	public List<Article> getArticles() {
		return articleRepository.getArticles();
	}

	@Override
	public List<Article> getArticlesByDeveloperId(long developer_id) {
		return articleRepository.getArticlesByDeveloperId(developer_id);
	}
	

	


}
