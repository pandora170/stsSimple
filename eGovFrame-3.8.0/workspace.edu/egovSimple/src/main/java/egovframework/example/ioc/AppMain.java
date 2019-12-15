package egovframework.example.ioc;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class AppMain {
	
	public static void main(String[] args) {
		
//		AbstractApplicationContext context = new GenericXmlApplicationContext("classpath:/ioc.xml");
//		AbstractApplicationContext context = new GenericXmlApplicationContext("classpath:/ioc2.xml");
		AbstractApplicationContext context = new GenericXmlApplicationContext("classpath:/aop.xml");
		
		Human human = context.getBean("man",Human.class);
//		human.setName("LEE");
		human.info();
		
		context.close();
	}
}
