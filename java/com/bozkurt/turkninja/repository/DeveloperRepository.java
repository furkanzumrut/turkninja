package com.bozkurt.turkninja.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bozkurt.turkninja.model.Developer;
@Repository
public interface DeveloperRepository{
	
	public Developer addDeveloper(Developer developer);
	public void updateDeveloper(Developer developer);
	public Developer getDeveloper(int id);
	public void deleteDeveloper(int id);
	public List<Developer> getDevelopers();
	public Developer getDeveloperByUsername(String username);
	public Developer getDeveloperByEmailAndPAssword(String email,String password);
}
