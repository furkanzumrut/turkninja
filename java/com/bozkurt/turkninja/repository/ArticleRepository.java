package com.bozkurt.turkninja.repository;

import java.util.List;

import com.bozkurt.turkninja.model.Article;

public interface ArticleRepository {

	public Article addArticle(Article article);
	public void updateArticle(Article article);
	public Article getArticle(int id);
	public void deleteArticle(int id);
	public List<Article> getArticles();

}
