package egovframework.lab.ioc.postprocess;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;

public class SampleBeanFactoryPostProcessor implements BeanFactoryPostProcessor {

	private static final Logger LOGGER = LoggerFactory.getLogger(SampleBeanFactoryPostProcessor.class);

    public void postProcessBeanFactory(
            ConfigurableListableBeanFactory beanFactory) throws BeansException {
    	LOGGER.debug("SampleBeanFactoryPostProcessor executed.");

        // 전체 bean 이름 출력
        for (String beanDefinitionName : beanFactory.getBeanDefinitionNames()) {
        	LOGGER.debug(beanDefinitionName);
        }
    }

}
