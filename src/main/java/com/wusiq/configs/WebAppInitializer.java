package com.wusiq.configs;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * 项目的应用上下文初始化类
 */
public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{
    @Override
    protected Class<?>[] getRootConfigClasses() {//非Web的组件
        return new Class<?>[]{SecurityConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {//配置web组件
        return new Class<?>[]{WebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {//拦截请求路径
        return new String[]{"*.do","*.json"};
    }
}
