package egovframework.lab.ioc.lifecycle;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath*:META-INF/spring/context-*.xml" })
//@ContextConfiguration(locations = {"classpath*:META-INF/spring/context-common.xml" })
@ContextConfiguration(locations = {"classpath*:META-INF/spring/context-common.xml",
								   "classpath*:META-INF/spring/context-lifecycle.xml" })
public class BeanLifeCycleTest {

	private static final Logger LOGGER = LoggerFactory.getLogger(BeanLifeCycleTest.class);
	
//    @Resource(name = "xmlBeanLifeCycleSample")
//    XmlBeanLifeCycleSample beanLifeCycleSampleW;
    @Resource(name = "annotationBeanLifeCycleSample")
    AnnotationBeanLifeCycleSample beanLifeCycleSample;

    @Resource
    ApplicationContext context;

    @Test
    public void testBeanLifeCycleCallbackMethod() throws Exception {

    	LOGGER.debug(beanLifeCycleSample.sampleMethod());

        // Bean LifeCycle callback 메서드로 지정된 각 메서드의 실행
        // 순서를 console 에서 확인

    }
}
