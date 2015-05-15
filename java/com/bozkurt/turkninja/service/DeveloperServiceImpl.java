package com.bozkurt.turkninja.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bozkurt.turkninja.model.Developer;
import com.bozkurt.turkninja.repository.DeveloperRepository;
@Service
@Transactional
public class DeveloperServiceImpl implements DeveloperService {

	@Autowired
	DeveloperRepository developerRepository;
	
	@Override
	public void save(Developer developer){
		developerRepository.addDeveloper(developer);
	}
	

	@Override
	public Developer getDeveloperByUsername(String username) {
		return developerRepository.getDeveloperByUsername(username);
	}


	@Override
	public Developer login(String email, String password) {
		return developerRepository.getDeveloperByEmailAndPAssword(email,password);
	}




	
}
