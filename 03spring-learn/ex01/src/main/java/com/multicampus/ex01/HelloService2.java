package com.multicampus.ex01;

public class HelloService2 implements IHelloService {
	
	@Override
	public String sayHello(String name) {
		System.out.println("HelloService2.sayHello() 메서드 실행");
		String message = "Hello~~~~" + name;
		return message;
		
	}
}
