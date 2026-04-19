package com.abhi.devops.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;   // ✅ Add this line

@RestController
public class Testingclass {
	
	@GetMapping("/")
	public String devTesting() {
		return "hi we are learning java deployment process with java and ubuntu on aws !";
	}

	@GetMapping("/health")
    public ResponseEntity<String> healthCheck() {
        return ResponseEntity.ok("health is working");
    }
}
