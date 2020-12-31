package com.example.service;

import com.example.pojo.News;

import java.util.List;
import java.util.Map;

public interface NewsService {
    int addNew(News news);
    int deleteNewById( int id);
    int updateNew(News news);
    List<News> queryAllNews();
    News queryNewById( int id);
    List<News> queryNews(Map map);
}
