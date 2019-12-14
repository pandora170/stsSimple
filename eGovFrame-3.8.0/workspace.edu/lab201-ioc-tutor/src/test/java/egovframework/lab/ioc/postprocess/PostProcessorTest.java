package egovframework.lab.ioc.postprocess;

import static org.junit.Assert.assertEquals;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.interceptor.CustomizableTraceInterceptor;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import egovframework.lab.ioc.lifecycle.AnnotationBeanLifeCycleSample;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:META-INF/spring/context-common.xml",
								   "classpath*:META-INF/spring/context-postprocessor.xml" })
public class PostProcessorTest {

    @Resource(name = "annotationBeanLifeCycleSample")
    AnnotationBeanLifeCycleSample beanLifeCycleSample;

    @Test
    public void testBeanPostProcessor() throws Exception {

        // log4j.xml 에 아래의 customizableTraceInterceptor
        // 에 대한 default logger 설정을 하였음.
        final Logger LOGGER = LoggerFactory.getLogger(CustomizableTraceInterceptor.class);
        
        // TRACE 레벨인 경우에만 로그 출력됨
        assertEquals(true, LOGGER.isTraceEnabled());

        // @Debug 가 달려 있으므로 콘솔에서 아래와 같은 로그가 출력됨을 확인할 수 있음. 
        // 2009-07-09 16:48:12,468 TRACE [org.springframework.aop.interceptor.CustomizableTraceInterceptor] ★ Entering - AnnotationBeanLifeCycleSample.sampleMethod ( arguments type :  , value :  )
        // 2009-07-09 16:48:12,468 TRACE [org.springframework.aop.interceptor.CustomizableTraceInterceptor] ★ Exiting - AnnotationBeanLifeCycleSample.sampleMethod ( returns : Hi~ annotation sample ) , Time(0)
        beanLifeCycleSample.sampleMethod();
    }
}
