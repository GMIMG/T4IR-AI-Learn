package com.multicampus.ex01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller
public class HelloController {
	IHelloService helloService = new HelloService();
	
	
	@Autowired
	@Qualifier("helloService")
	IHelloService service;
	
	/*
	public HelloController() {
	}
	
	public HelloController(IHelloService helloService) {
		this.helloService = helloService;
	}
	
	public void setHelloService(IHelloService helloService) {
		this.helloService = helloService;
	}
	
	public void hello(String name) {
		System.out.println("HelloController : " + helloService.sayHello(name));
	}
	
	*/
	
	public void hello(String name) {
		System.out.println("HelloController : " + service.sayHello(name));
	}
}
