package egovframework.example.ioc;

import org.aspectj.lang.ProceedingJoinPoint;

public class LogginAdvice {
	public Object mylog(ProceedingJoinPoint joinPoint) throws Throwable{
		
		String className = joinPoint.getTarget().getClass().getSimpleName();
		String methodName = joinPoint.getSignature().getName();
		Object[] args = joinPoint.getArgs();
		Object ret = null;
		
		if(args != null) {
			for (Object param : args) {
				System.out.println(param);
			}
		}
		
		try {
			ret = joinPoint.proceed();
			System.out.println("ret :" +ret);
			return ret;	
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}		
	}
}
