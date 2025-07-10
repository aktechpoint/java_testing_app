package com.abhi.devops.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Testingclass {
	
	@GetMapping("/")
	public String devTesting() {
		return "hi we are learning java deployment process with java and ubuntu on aws !";
	}

}
