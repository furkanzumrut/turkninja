package com.bozkurt.turkninja.service;

import java.util.List;

import com.bozkurt.turkninja.model.Article;

public interface ArticleService {
	
	public void save(Article article);
	public List<Article> getArticles() ;
	public List<Article> getArticlesByDeveloperId(long developer_id) ;
}
