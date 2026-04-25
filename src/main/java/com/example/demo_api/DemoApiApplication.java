package com.example.demo_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApiApplication.class, args);
	}

	@GetMapping("/")
	public String home() {
		return "Welcome to the Demo API!";
	}

	@GetMapping("/hello")
	public String hello() {
		return "Hello, World!";
	}
}
