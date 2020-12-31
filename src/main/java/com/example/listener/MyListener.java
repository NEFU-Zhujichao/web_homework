package com.example.listener;

import com.example.pojo.News;
import com.example.service.NewsServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

public class MyListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        NewsServiceImpl serviceImpl = context.getBean("newsServiceImpl", NewsServiceImpl.class);

        List<News> list = serviceImpl.queryAllNews();
        ServletContext servletContext = servletContextEvent.getServletContext();
        servletContext.setAttribute("list",list);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
