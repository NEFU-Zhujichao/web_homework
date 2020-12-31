package com.example.controller;

import com.example.pojo.News;
import com.example.pojo.User;
import com.example.service.NewsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class NewsController {
    @Autowired
    private NewsServiceImpl newsService;

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @PostMapping("/loginto")
    public String loginto(String username, String pwd, HttpServletRequest request){
        String url = "";
        HttpSession session = request.getSession();
        if (username.equals("admin") && pwd.equals("123456")){
            User user = new User();
            user.setUsername(username);user.setPwd(pwd);
            session.setAttribute("user",user);
            url = "redirect:index.jsp";
        } else {
            session.setAttribute("user",null);
            url = "login";
        }
        return url;
    }

    @GetMapping("/allNews")
    public String allNews(Model model){
        List<News> list = newsService.queryAllNews();
        model.addAttribute("list",list);
        return "allNews";
    }
    @GetMapping("/allNotifications")
    public String allNotifications(){
        return "allNotifications";
    }
    @GetMapping("/queryNew/{newsID}")
    public String queryNew(@PathVariable int newsID, Model model){
        News news = newsService.queryNewById(newsID);
        model.addAttribute("news",news);
        return "newById";
    }
    @GetMapping("/toUpdateNew/{newsID}")
    public String toUpdateNew(@PathVariable int newsID,Model model){
        News news = newsService.queryNewById(newsID);
        model.addAttribute("news",news);
        return "updateNew";
    }
    @PostMapping("/updateNew")
    public String updateNew(News news){
        newsService.updateNew(news);
        return "redirect:allNews";
    }
    @GetMapping("/toDeleteNew")
    public String toDeleteNew(int newsID){
        newsService.deleteNewById(newsID);
        return "redirect:allNews";
    }
    @GetMapping("/addNew")
    public String toAddNew(){
        return "addNew";
    }
    @PostMapping("/addNew")
    public String addNew(News news,Model model){
        Date date = new Date();
        news.setCreateTime(date);
        newsService.addNew(news);
        return "redirect:allNews";
    }
    @GetMapping("/introduce")
    public String toTeachers(){
        return "teacherTeam";
    }
    @GetMapping("/professors")
    public String professors(){
        return "professors";
    }
    @GetMapping("/professor")
    public String professor(){
        return "professor";
    }
    @GetMapping("/associateProfessors")
    public String associateProfessors(){
        return "associateProfessors";
    }
    @GetMapping("/associateProfessor")
    public String associateProfessor(){
        return "associateProfessor";
    }
    @GetMapping("/teachers")
    public String teachers(){
        return "teachers";
    }
    @GetMapping("/teacher")
    public String teacher(){
        return "teacher";
    }
    @GetMapping("/profession")
    public String profession(){
        return "profession";
    }
    @GetMapping("/923lab")
    public String lab1(){
        return "923lab";
    }
    @GetMapping("/925lab")
    public String lab2(){
        return "925lab";
    }
    @GetMapping("/test")
    public String test(){
        return "test";
    }
    @GetMapping("/professionalIntroduction")
    public String professionalIntroduction(){
        return "professionalIntroduction";
    }
    @GetMapping("/directionIntroduction")
    public String directionIntroduction(){
        return "directionIntroduction";
    }
}
