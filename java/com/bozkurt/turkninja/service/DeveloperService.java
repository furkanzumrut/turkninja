package com.bozkurt.turkninja.service;

import com.bozkurt.turkninja.model.Developer;

public interface DeveloperService {

	public void save(Developer developer);
	public Developer getDeveloperByUsername(String username);
}
