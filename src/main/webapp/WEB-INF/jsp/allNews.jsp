<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* ------------- 通用 ------------- */
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        /*顶图*/
        .topImg img{
            width: 100%;
            height: 300px;
        }
        .topImg{
            padding: 0;
        }
        /*导航栏*/
        .nav{
            background-color: green;
            height: 40px;
            z-index: 10;
            margin-bottom: 20px;
        }
        .nav ul{
            display: flex;
        }
        .nav ul li{
            list-style: none;
            width: 150px;
            text-align: center;
            line-height: 40px;
            color: green;
        }
        .nav a{
            display: block;
            color: white;
            text-decoration: none;
        }
        .nav a[class=content]:hover{
            color: royalblue;
            background-color: rosybrown;
        }
        .nav ul li ul{
            display: flex;
            flex-direction: column;
        }
        .nav ul li ul li{
            display: none;
        }
        .nav ul li:hover ul li{
            background-color: #008000;
            display: block;
            justify-content: center;
        }
        .right{
            margin-left: auto;
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
            margin: -280px 100px 0 20px;
        }
        .list-main {
            width: 1200px;
            margin: 15px auto;
            height: auto;
            overflow: hidden;
        }
        .list-left {
            float: left;
            width: 225px;
        }
        .list-right {
            float: right;
            width: 930px;
            border-top: #01622f 2px solid;
            border-left: #e5e5e5 1px solid;
            border-right: #e5e5e5 1px solid;
            border-bottom: #e5e5e5 1px solid;
            min-height: 800px;
            padding: 0 40px;
            background: #fcfcfc;
        }
        /*侧边栏*/
        .sidebar{
            min-width: 200px;
            margin: 0 20px;
        }
        .sidebar ul{
            list-style-type: none;
        }
        .sidebar h1{
            background: green;
            color: white;
            text-align: center;
            padding: 10px 20px;
            margin: 0;
        }
        .sidebar ul{
            background: #f1f1f1;
        }
        .sidebar a{
            display: block;
            padding: 15px 20px;
            text-decoration: none;
            color: #111111;
            transition: 0.5s;
        }
        .sidebar li:hover a{
            background: deepskyblue;
            color: white;
            transform: scale(1.1);
        }
        .list-right h3{
            display: inline-block;
            color: green;
            padding: 5px 10px;
            margin-bottom: 0px;
            border-bottom: 2px solid #01622f;
        }
        .list-right .header .tip{
            float: right;
            color: #666666;
            margin-top: 35px;
            margin-right: 25px;
            font-size: 14px;
        }
        .tip a{
            text-decoration: none;
            color: #666666;
        }
        .header{
            border-bottom: #d5e1dd 1px solid;
            margin-bottom: 10px;
        }
        .header a[class=addNew]{
            text-decoration: none;
            color: #f08c00;
            margin-left: 100px;
            display: inline-block;
            padding: 10px 20px;
        }
        .header a[class=addNew]:hover{
            background: orange;
            color: white;
            border-radius: 4px;
        }
        .content a{
            text-decoration: none;
            display: inline-block;
            padding: 10px 20px;
        }
        .content .item{
            border-bottom: 1px dotted;
            position: relative;
        }
        .content .item .date{
            position: absolute;
            right: 150px;
            display: inline-block;
            padding: 10px 20px;
        }
        .content .item a{
            color: #666666;
        }
        .content .item a:hover{
            color: deepskyblue;
        }
        .content .item .option{
            position: absolute;
            right: 0;
        }
        .content .item .option a:hover{
            color: white;
            background: green;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<div class="main">
    <!-- header -->
    <div class="col-md-12 topImg">
        <img src="statics/1.jpeg" alt="">
    </div>
    <div class="nav col-md-12">
        <ul>
            <li class="logo"><img src="statics/logo2.png" alt=""></li>
            <li><a href="${pageContext.request.contextPath}/index.jsp" class="content">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/professionalIntroduction" class="content">专业介绍</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/professionalIntroduction" class="content">专业简介</a></li>
                    <li><a href="${pageContext.request.contextPath}/directionIntroduction" class="content">方向简介</a></li>
                </ul>
            </li>
            <li><a href="${pageContext.request.contextPath}/923lab" class="content">实验地点</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/923lab" class="content">923创新实验室</a></li>
                    <li><a href="${pageContext.request.contextPath}/925lab" class="content">925移动开发实验室</a></li>
                </ul>
            </li>
            <li><a href="${pageContext.request.contextPath}/introduce" class="content">教师队伍</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/professors" class="content">教授</a></li>
                    <li><a href="${pageContext.request.contextPath}/associateProfessors" class="content">副教授</a></li>
                    <li><a href="${pageContext.request.contextPath}/teachers" class="content">讲师</a></li>
                </ul>
            </li>
            <li><a href="${pageContext.request.contextPath}/profession" class="content">就业指南</a></li>
            <li><a href="${pageContext.request.contextPath}/allNews" class="content">校内新闻</a></li>
            <li><a href="${pageContext.request.contextPath}/allNotifications" class="content">校内公告</a></li>
            <li class="right"><a href="${pageContext.request.contextPath}/login"><i class="material-icons">person</i></a></li>
        </ul>
    </div>
    <div class="list-main">
        <div class="list-left">
            <div class="sidebar">
                <h1>首页</h1>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/allNews">专业新闻</a></li>
                    <li><a href="${pageContext.request.contextPath}/allNotifications">专业公告</a></li>
                </ul>
            </div>
        </div>
        <div class="list-right">
            <div class="header">
                <h3>专业新闻</h3>
                <a href="${pageContext.request.contextPath}/addNew" class="addNew">添加新闻</a>
                <div class="tip">
                    <span>当前位置：</span><a href="${pageContext.request.contextPath}/index.jsp">首页</a>
                    <span>>></span><a href="${pageContext.request.contextPath}/allNews">专业新闻</a>
                </div>
            </div>
            <div class="content">
                <c:forEach var="news" items="${list}">
                    <div class="item">
                        <a href="${pageContext.request.contextPath}/queryNew/${news.newsID}">${news.topic}</a>
                        <span class="date"><fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                        <span class="option">
                            <a href="${pageContext.request.contextPath}/toUpdateNew/${news.newsID}">修改</a> | <a href="${pageContext.request.contextPath}/toDeleteNew?newsID=${news.newsID}">删除</a>
                        </span>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<%@include file="footer2.jsp"%>
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</body>
</html>