package egovframework.example.ioc;

import org.springframework.stereotype.Component;

@Component
public class MsPhone implements phone{

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("PHONE NUMBER TEST");
	}
}
