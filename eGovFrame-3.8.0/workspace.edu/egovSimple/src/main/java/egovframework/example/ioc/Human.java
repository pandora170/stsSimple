package egovframework.example.ioc;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("man")
public class Human {
	@Value("default")
	private String name;
	
	@Autowired
	private phone phone;

	public void info() {
		System.out.println(name);
		phone.call();
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPhone(phone phone) {
		this.phone = phone;
	}
	
	@PostConstruct
	public void doStart() {
		System.out.println("start!!!");
	}
	
	@PreDestroy
	public void doEnd() {
		System.out.println("End!!!");
	}
}
