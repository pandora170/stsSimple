package egovframework.lab.ioc.lifecycle;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import egovframework.lab.ioc.postprocess.Debug;

@Component("annotationBeanLifeCycleSample")
public class AnnotationBeanLifeCycleSample {

	private static final Logger LOGGER = LoggerFactory.getLogger(AnnotationBeanLifeCycleSample.class);

    @Debug
    public String sampleMethod() {
        return "Hi~ annotation sample";
    }

    public void afterPropertiesSet() throws Exception {
    	LOGGER.debug("InitializingBean 을 구현한 경우 Bean 초기화(Initialization) 시 afterPropertiesSet 메서드가 수행됨.");
    }

    @PostConstruct
    public void directedInit() throws Exception {
    	LOGGER.debug("@PostConstruct 를 기술한 메서드의 경우  초기화 메서드로 수행됨.");
    }

    public void destroy() throws Exception {
    	LOGGER.debug("DisposableBean 을 구현한 경우 Bean 종료(Destruction) 시 destroy 메서드가 수행됨.");
    }

    @PreDestroy
    public void directedDestroy() throws Exception {
    	LOGGER.debug("@PreDestroy 를 기술한 메서드의 경우 종료 메서드로 수행됨.");
    }

}
