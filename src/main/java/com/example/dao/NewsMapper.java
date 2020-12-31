package com.example.dao;

import com.example.pojo.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface NewsMapper {
    int addNew(News news);
    int deleteNewById(@Param("newsID") int id);
    int updateNew(News news);
    List<News> queryAllNews();
    News queryNewById(@Param("newsID") int id);
    List<News> queryNews(Map map);
}
