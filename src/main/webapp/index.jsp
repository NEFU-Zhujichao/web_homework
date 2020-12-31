<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* ------------- 通用 ------------- */
    body{
      background-color: #e9e2e1;
    }
    * {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }
    a{
      text-decoration: none !important;
    }
    .main {
      position: relative;
      background: url(statics/btbg.jpg) repeat-x;
    }
    canvas{
      position: absolute;
      width: 90vw !important;
    }
    .topImg img{
      width: 100%;
    }
    .topImg{
      padding: 0;
    }
    .nav{
      background-color: transparent;
      z-index: 10;
    }
    .nav .nav-top img{
      width: 300px;
      height: 500px;
    }
    .nav ul{
      display: flex;
      position: absolute;
      top: 40px;
    }
    .nav ul li{
      list-style: none;
      width: 120px;
      text-align: center;
      line-height: 40px;
    }
    .nav a{
      display: block;
      color: white;
      text-decoration: none;
      font-size: 18px;
    }
    .nav li:hover a[class=content]{
      color: purple;
      background-color: white;
      border-top: 3px solid orange;
    }
    .nav a[class=content-son]:hover{
      background-color: #979797;
    }
    .nav ul li ul{
      display: flex;
      flex-direction: column;
    }
    .nav ul li ul li{
      display: none;
    }
    .nav ul li ul li a{
      color: black;
      padding: 0 25px;
    }
    .nav ul li:hover ul li{
      background-color: white;
      text-align: left;
      color: black;
      width: 240px;
    }
    .right{
      margin-left: 200px;
    }
    .right .material-icons{
      font-size: 40px;
      background: darkorange;
      height: 40px;
    }
    .right:hover a{
      color: royalblue;
    }
    .logo{
      margin: -20px 180px 0 20px;
    }
    /* Carousel base class */
    .carousel {
      height: 600px;
      width: 101%;
    }
    .carousel .item {
      height: 600px;
      background-color: #777;
    }
    .carousel-inner > .item > img {
      position: absolute;
      top: 0;
      left: 0;
      min-width: 100%;
      height: 600px;
    }
    .card{
      margin-top: 10px;
      padding: 0 10px;
    }
    .card h3{
      display: inline-block;
      color: green;
      padding: 5px 10px;
      margin-bottom: 0px;
      border-bottom: 2px solid #01622f;
    }
    .card .header a{
      float: right;
      text-decoration: none;
      color: #979797;
      margin-top: 35px;
      margin-right: 25px;
    }
    .header{
      border-bottom: #d5e1dd 1px solid;
      margin-bottom: 10px;
    }
    .card .content a{
      text-decoration: none;
      display: inline-block;
      padding: 10px 20px;
    }
    .card .content .item{
      border-bottom: 1px dotted;
      position: relative;
    }
    .card .content .item .date{
      position: absolute;
      right: 0;
      display: inline-block;
      padding: 10px 20px;
    }
    .card .content .item a{
      color: #666666;
    }
    .card .content .item a:hover{
      color: red;
    }
    .card .article-img img{
      width: 100%;
      height: 300px;
    }
    .card .introduce h1{
      text-align: center;
    }
    .card .introduce p{
      text-align: justify;
      text-indent: 2em;
    }
    .bottomImg{
      margin-top: 30px;
      padding: 0;
      position: relative;
    }
    .bottomImg .bottomImg-topic{
      width: 80%;
      padding: 10px 20px;
      position: absolute;
      top: 50px;
      left: 200px;
    }
    .bottomImg .bottomImg-topic h2{
      color: green;
      text-align: center;
      font-size: 2.8125vw;
      font-weight: bold;
    }
    .bottomImg img{
      width: 100%;
      height: 500px;
    }
    .bottomImg .bottomImg-content a{
      display: inline-block;
      padding: 15px 20px;
      text-decoration: none;
      position: absolute;
      margin: 50px;
      z-index: 10;
      font-size: 21px;
      color: black;
      width: 150px;
    }
    .bottomImg .bottomImg-content a:hover{
      font-size: 25px;
      color: green;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a1{
      top: -350px;
      left: 100px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a2{
      top: -350px;
      left: 350px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a3{
      top: -350px;
      left: 600px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a4{
      top: -350px;
      left: 850px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a5{
      top: -350px;
      left: 1100px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a6{
      top: -200px;
      left: 100px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a7{
      top: -200px;
      left: 350px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a8{
      top: -200px;
      left: 600px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a9{
      top: -200px;
      left: 850px;
    }
    .bottomImg .bottomImg-content .bottomImg-content-a10{
      top: -200px;
      left: 1100px;
    }
    canvas{
      height: 100vh;
      width: 100vw;
    }
  </style>
</head>
<body>
<div class="mainContainer">
  <!-- header -->
  <div class="topImg">
    <img src="statics/top.JPG" alt="">
  </div>
  <div class="nav col-md-12">

    <div class="card col-md-12" style="padding: 0;margin-top: 0;">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img class="first-slide" src="statics/1.jpeg" alt="First slide">
          </div>
          <div class="item">
            <img class="second-slide" src="statics/4.jpg" alt="Second slide">
          </div>
          <div class="item">
            <img class="third-slide" src="statics/3.jpg" alt="Third slide">
          </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    <ul>
      <li class="logo"><img src="statics/logo2.png" alt=""></li>
      <li><a href="${pageContext.request.contextPath}/index.jsp" class="content">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/professionalIntroduction" class="content">专业介绍</a>
        <ul>
          <li><a href="${pageContext.request.contextPath}/professionalIntroduction" class="content-son">专业简介</a></li>
          <li><a href="${pageContext.request.contextPath}/directionIntroduction" class="content-son">方向简介</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/923lab" class="content">实验地点</a>
        <ul>
          <li><a href="${pageContext.request.contextPath}/923lab" class="content-son">923创新实验室</a></li>
          <li><a href="${pageContext.request.contextPath}/925lab" class="content-son">925移动开发实验室</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/introduce" class="content">教师队伍</a>
        <ul>
          <li><a href="${pageContext.request.contextPath}/professors" class="content-son">教授</a></li>
          <li><a href="${pageContext.request.contextPath}/associateProfessors" class="content-son">副教授</a></li>
          <li><a href="${pageContext.request.contextPath}/teachers" class="content-son">讲师</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/profession" class="content">就业指南</a></li>
      <li><a href="${pageContext.request.contextPath}/allNews" class="content">校内新闻</a></li>
      <li><a href="${pageContext.request.contextPath}/allNotifications" class="content">校内公告</a></li>
      <li class="right"><a href="${pageContext.request.contextPath}/login"><i class="material-icons">person</i></a></li>
    </ul>
  </div>
  <div class="main col-md-12">
    <!-- main  -->
    <canvas id="snow-flake-app"></canvas>
    <div class="col-md-12">
      <div class="card col-md-4">
        <div class="article-img">
          <img src="statics/jiayou.jpg" alt="">
        </div>
        <div class="introduce">
          <h1>关于我们</h1>
          <p>
            软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。
          </p>
          <p>
            在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，也提高了工作效率和生活效率 。
          </p>
        </div>
      </div>
      <!-- article -->
      <div class="card col-md-4">
        <div class="article-img">
          <img src="statics/ketang.jpg" alt="">
        </div>
        <div class="header">
          <h3>专业新闻</h3>
          <a href="${pageContext.request.contextPath}/allNews">更多>></a>
        </div>
        <div class="content">
          <c:forEach var="news" items="${list}" end="4">
            <div class="item">
              <a href="${pageContext.request.contextPath}/queryNew/${news.newsID}">${news.topic}</a>
              <span class="date">
                <fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
              </span>
            </div>
          </c:forEach>
        </div>
      </div>
      <div class="card col-md-4">
        <div class="article-img">
          <img src="statics/yiqing.jpg" alt="">
        </div>
        <div class="header">
          <h3>专业公告</h3>
          <a href="${pageContext.request.contextPath}/allNotifications">更多>></a>
        </div>
        <div class="content">
          <c:forEach var="news" items="${list}" end="4">
            <div class="item">
              <a href="">${news.topic}</a>
              <span class="date"><fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/> </span>
            </div>
          </c:forEach>
        </div>
      </div>
    </div>
  </div>
  <div class="bottomImg col-md-12" style="width: 101vw!important; margin-left: -20px;">
    <img src="statics/snow.jpg" alt="">
    <div class="bottomImg-topic">
      <h2>A world of knowledge and excellence in ten aspects</h2>
    </div>
    <div class="col-md-12 bottomImg-content">
      <a href="" class="bottomImg-content-a1" data-img="statics/img_bhv-bg-1.jpg">Architecture</a>
      <a href="" class="bottomImg-content-a2" data-img="statics/img_bhv-bg-2.jpg">Arts</a>
      <a href="" class="bottomImg-content-a3" data-img="statics/img_bhv-bg-3.jpg">Business</a>
      <a href="" class="bottomImg-content-a4" data-img="statics/img_bhv-bg-4.jpg">Dentistry</a>
      <a href="" class="bottomImg-content-a5" data-img="statics/img_bhv-bg-5.jpg">Education</a>
      <a href="" class="bottomImg-content-a6" data-img="statics/img_bhv-bg-6.jpg">Engineering</a>
      <a href="" class="bottomImg-content-a7" data-img="statics/img_bhv-bg-7.jpg">Law</a>
      <a href="" class="bottomImg-content-a8" data-img="statics/img_bhv-bg-8.jpg">Medicine</a>
      <a href="" class="bottomImg-content-a9" data-img="statics/img_bhv-bg-9.jpg">Science</a>
      <a href="" class="bottomImg-content-a10" data-img="statics/img_bhv-bg-10.jpg">News</a>
    </div>
  </div>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script>
  $(".nav ul li").hover(function(){
    let li =  $(this).children().children();
    if(li.length==1)
      return false
    $(this).children().children().slideDown(300);
  },function(){
    let li =  $(this).children().children();
    if(li.length==1)
      return false
    $(this).children().children().css("display","none")
  })
  $(".bottomImg-content a").hover(function (){
    let src = $(this).data("img")
    $(this).parent().prev().prev().prop("src",src)
  },function (){
    $(this).parent().prev().prev().prop("src","statics/snow.jpg")
  })
</script>
<script>
  window.animation_config = {
    generatorDelay : { min: 1, max:20 }, //in ms
    speed : 1, //1x
    x_axis_rate : 0.1, // x axis mobility
    weight : 0.5, //snow flake weight
    size : 1.5, //snow flake size
    z_axis_rate : 0.05, //z axis mobility
    color : {b : 255, a: 0.8}, //b for brightness, a for alpha, by default generates random colors but if you set brightness 255 then you'll see only white color
    wind : 0 // value's sign determines wind direction.
  };
</script>
<script src="js/snow.js"></script>
<%@include file="footer.jsp"%>
</body>
</html>