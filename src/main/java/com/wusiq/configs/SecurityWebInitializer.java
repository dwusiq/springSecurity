package com.wusiq.configs;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

/**
 * 这样配置的话，DelegatingFilterProxy会将过滤逻辑委托给springSecurityFilterChain。(项目中起到这个作用就可以，不需要在
 * 本类中添加其他的代码了)
 */
public class SecurityWebInitializer extends AbstractSecurityWebApplicationInitializer{
}
