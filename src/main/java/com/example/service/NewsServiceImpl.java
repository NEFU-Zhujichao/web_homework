package com.example.service;

import com.example.dao.NewsMapper;
import com.example.pojo.News;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImpl implements NewsService{

    private NewsMapper newsMapper;

    public void setNewsMapper(NewsMapper newsMapper) {
        this.newsMapper = newsMapper;
    }

    @Override
    public int addNew(News news) {
        return newsMapper.addNew(news);
    }

    @Override
    public int deleteNewById(int id) {
        return newsMapper.deleteNewById(id);
    }

    @Override
    public int updateNew(News news) {
        return newsMapper.updateNew(news);
    }

    @Override
    public List<News> queryAllNews() {
        return newsMapper.queryAllNews();
    }

    @Override
    public News queryNewById(int id) {
        return newsMapper.queryNewById(id);
    }

    @Override
    public List<News> queryNews(Map map) {
        return newsMapper.queryNews(map);
    }

}
