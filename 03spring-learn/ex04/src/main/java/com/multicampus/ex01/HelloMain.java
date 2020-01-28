package com.multicampus.ex01;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class HelloMain {

	public static void main(String[] args) {
		
		// class
		//HelloService helloService = new HelloService();
		//System.out.println(helloService.sayHello("�솴吏�誘�"));
		
		
		// Interface
		//IHelloService helloService2 = new HelloService2();
		//System.out.println(helloService2.sayHello("�솴吏�誘�"));
		
		
		// Controller瑜� �궗�슜�븳 諛⑸쾿
		//IHelloService helloService = new HelloService2();
		//HelloController controller = new HelloController();
		
		//controller.setHelloService(helloService);
		//controller.hello("�솴吏�誘�");
		
		// bean�쓣 �씠�슜�븳 諛⑸쾿
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		HelloController controller = context.getBean("helloController", HelloController.class);
		controller.hello("Jimin");
		context.close();
		
		// �뼱�끂�뀒�씠�뀡�쓣 �씠�슜�븳 諛⑸쾿
		
		
		
		
		
		
		
	}

}