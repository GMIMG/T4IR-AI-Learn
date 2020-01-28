package com.multicampus.ex01;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloMain {

	public static void main(String[] args) {
		
		// class를 이용한 방법
		//HelloService helloService = new HelloService();
		//System.out.println(helloService.sayHello("황지민"));
		
		
		// Interface를 사용한방법
		//IHelloService helloService2 = new HelloService2();
		//System.out.println(helloService2.sayHello("황지민"));
		
		
		// Controller를 사용한 방법
		//IHelloService helloService = new HelloService2();
		//HelloController controller = new HelloController();
		
		//controller.setHelloService(helloService);
		//controller.hello("황지민");
		
		// bean을 이용한 방법
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		HelloController controller = context.getBean("helloController", HelloController.class);
		controller.hello("Jimin");
		context.close();
		
		// 어노테이션을 이용한 방법
		
		
		
		
		
	}

}