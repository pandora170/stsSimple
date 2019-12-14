package egovframework.lab.ioc.lifecycle;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class XmlBeanLifeCycleSample implements InitializingBean, DisposableBean {

	private static final Logger LOGGER = LoggerFactory.getLogger(XmlBeanLifeCycleSample.class);

    public String sampleMethod() {
        return "Hi~ xml sample";
    }

    public void afterPropertiesSet() throws Exception {
    	LOGGER.debug("InitializingBean 을 구현한 경우 Bean 초기화(Initialization) 시 afterPropertiesSet 메서드가 수행됨.");
    }

    public void directedInit() throws Exception {
    	LOGGER.debug("Bean 설정에 init-method 를 기술한 경우 해당 초기화 메서드가 수행됨.");
    }

    public void destroy() throws Exception {
    	LOGGER.debug("DisposableBean 을 구현한 경우 Bean 종료(Destruction) 시 destroy 메서드가 수행됨.");
    }

    public void directedDestroy() throws Exception {
    	LOGGER.debug("Bean 설정에 destroy-method 를 기술한 경우 해당 종료 메서드가 수행됨.");
    }

}
