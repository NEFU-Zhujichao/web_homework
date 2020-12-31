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
        /*主要内容介绍*/
        .container{
            position: relative;
        }
        .container .tip{
            float: left;
            color: #666666;
            margin-top: 35px;
            margin-left: 25px;
            font-size: 18px;
            border-bottom: #d5e1dd 1px solid;
            padding-bottom: 10px;
        }
        .container .tip .material-icons{
            font-size: 35px;
            color: blue;
            position: absolute;
            top: -5px;
            left:-15px
        }
        .tip a{
            text-decoration: none;
            color: #666666;
        }
        .tip a:hover{
            color: green;
        }
        .container .content h3 {
            font-size: 24px;
            font-weight: bold;
            line-height: 50px;
            width: 100%;
            text-align: center;
            color: #002147;
            padding-bottom: 5px;
        }
        .container .content .others {
            font-size: 14px;
            line-height: 30px;
            text-align: center;
            color: #333333;
            background: #ececec;
        }
        .container-introduce p{
            text-indent: 2em;
            color: #727272;
            margin: 30px 0;
        }
        .container-introduce a{
            text-decoration: none;
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
    <div class="container">
        <div class="col-md-12">
            <div class="tip col-md-12">
                <i class="material-icons">location_on</i><b><span>您当前所在位置：</span></b><a href="${pageContext.request.contextPath}/index.jsp">首页</a>
                <span>>></span><a href="${pageContext.request.contextPath}/introduce">师资介绍</a>
                <span>>>正文</span>
            </div>
            <div class="content">
                <h3>罗嗣卿</h3>
                <div class="others">
                    <span>发布日期：2018-12-10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>来源：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>点击量：2568</span>
                </div>
                <hr>
                <div class="container-introduce">
                    <div style="text-align: center"><a href="#"><img src="statics/luosiqing.png" alt=""></a></div>
                    <p>
                        罗嗣卿，硕士，副教授，硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。主持和参加省攻关重点、省自然基金、国家林业公益性行业专项、省教改项目15项，发表论文20余篇，教材3部。
                    </p>
                    <p>
                        <strong>所在学科：</strong>软件工程，软件工程（专业学位）
                    </p>
                    <p>
                        <strong>Email：</strong><a href="#">luosq@nefu.edu.cn</a>
                    </p>
                    <hr>
                    <p>上一条：<a href="${pageContext.request.contextPath}/associateProfessor">王阿川</a></p>
                    <p>下一条：<a href="${pageContext.request.contextPath}/associateProfessor">任洪娥</a></p>
                </div>

            </div>
        </div>
    </div>
</div>

</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</body>
</html>