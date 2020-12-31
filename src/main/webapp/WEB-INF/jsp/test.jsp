<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="url" value="/"/>
    <base href="${url}">
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
        /*导航栏*/
        .nav {
            background-color: #E1E5E1;
            height: 40px;
            z-index: 10;
            margin-bottom: 20px;
        }
        .logo{
            margin: 10px 150px 0 10px;
        }
        .nav ul {
            display: flex;
        }

        .nav ul li {
            list-style: none;
            width: 150px;
            text-align: center;
            line-height: 40px;
            color: gray;
        }

        .nav a {
            display: block;
            color: white;
            text-decoration: none;
        }

        .nav a[class=content]:hover {
            color: royalblue;
            background-color: rosybrown;
        }

        .nav ul li ul {
            display: flex;
            flex-direction: column;
        }

        .nav ul li ul li {
            display: none;
        }

        .nav ul li:hover ul li {
            background-color: #008000;
            display: block;
            justify-content: center;
        }
        .right {
            margin-left: auto;
        }

        .right .material-icons {
            font-size: 40px;
            background: darkorange;
            height: 40px;
            color: white !important;
        }

        .right:hover a i{
            color: royalblue !important;
        }
        /*正文*/
        *{margin: 0;padding: 0;font-family: "微软雅黑";font-size: 12px;color: #000;}
        ul{list-style: none;}
        a{text-decoration: none;}
        body{
            background: #E1E5E1;
        }
        .gongneng_main{height: 785px;width: 1200px;margin: 0 auto;}
        .Small_tedian_tit{text-align:center;font-size: 32px;color:#333;padding-top: 95px;padding-bottom: 40px;}
        .gongneng_tab{width: 520px;height: 45px;border-radius: 25px;border:1px solid #f3f3f3;margin: 0 auto; box-shadow: 0px -2px 2px #e8e6e6;margin-bottom: 80px;}
        .gongneng_tabcon p{text-indent: 2rem;}
        .gongneng_tabmin{width: 392px;margin: 0 auto;overflow: hidden;padding: 5px 0;}
        .gongneng_click{cursor: pointer; width: 35px;height: 35px;margin: 0 7px;float: left;text-align: center; position: relative;}
        .gongneng_click b{font-weight: 400; position: relative; z-index: 2; color: #555;line-height: 35px;font-size: 20px;transition: all .5s ease;}
        .gongneng_click i{position: absolute; width:0; height:0; left:50%; top:50%; background-color:#00b0ff;box-shadow: 0 3px 10px #b4e9ff;border-radius: 50%; z-index: 1;transition: all .2s ease;}
        .gongneng_click.cur b{color:#fff;}
        .gongneng_click.cur i{ width: 100%; height: 100%; left:0; top:0;}
        .gongneng_tabcon{overflow: hidden;display: none;}
        .gongneng_left1{width: 537px;height: 354px;float: left;margin-left: 150px;margin-right: 130px;}
        .gongneng_right1{overflow: hidden;}
        .gongneng_right1 b{font-size: 90px;display: block;color: #ededed;margin-top: 35px;padding-bottom: 20px;}
        .gongneng_right1 em{font-size: 24px;display: block;color: #555;padding-bottom: 20px;}
        .gongneng_right1 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        .gongneng_right2{float: left;margin-left: 220px;margin-right: 130px; width: 350px;}
        .gongneng_right2 b{font-size: 90px;display: block;color: #ededed;margin-top: 35px;padding-bottom: 20px;}
        .gongneng_right2 em{font-size: 24px;display: block;color: #555;padding-bottom: 20px;}
        .gongneng_right2 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        .gongneng_left3{width: 552px;height: 364px;float: left;margin-left: 190px;margin-right: 70px;}
        .gongneng_right3{overflow: hidden;}
        .gongneng_right3 b{font-size: 90px;display: block;color: #ededed;margin-top: 55px;padding-bottom: 20px;}
        .gongneng_right3 em{font-size: 24px;display: block;color: #555;padding-bottom: 15px;}
        .gongneng_right3 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        .gongneng_left4{width: 360px;height: 347px;float: right;margin-right: 120px;}
        .gongneng_right4{float: left;margin-left: 220px;margin-right: 130px;  width: 350px;}
        .gongneng_right4 b{font-size: 90px;display: block;color: #ededed;margin-top: 35px;padding-bottom: 20px;}
        .gongneng_right4 em{font-size: 24px;display: block;color: #555;padding-bottom: 20px;}
        .gongneng_right4 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        .gongneng_left5{width: 550px;height: 362px;float: left;margin-left: 160px;margin-right:110px;}
        .gongneng_right5{overflow: hidden;}
        .gongneng_right5 b{font-size: 90px;display: block;color: #ededed;margin-top: 55px;padding-bottom: 20px;}
        .gongneng_right5 em{font-size: 24px;display: block;color: #555;padding-bottom: 15px;}
        .gongneng_right5 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        .gongneng_left6{width: 360px;height: 342px;float: right;margin-right: 50px;}
        .gongneng_right6{float: left;margin-left: 220px;margin-right: 130px; width: 350px;}
        .gongneng_right6 b{font-size: 90px;display: block;color: #ededed;margin-top: 35px;padding-bottom: 20px;}
        .gongneng_right6 em{font-size: 24px;display: block;color: #555;padding-bottom: 20px;}
        .gongneng_right6 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        .gongneng_left7{width: 305px;height: 348px;float: left;margin-left: 220px;margin-right: 130px;}
        .gongneng_right7{float: right;width: 350px;}
        .gongneng_right7 b{font-size: 90px;display: block;color: #ededed;margin-top: 35px;padding-bottom: 20px;}
        .gongneng_right7 em{font-size: 24px;display: block;color: #555;padding-bottom: 20px;}
        .gongneng_right7 p{font-size: 14px;display: block;color: #777;padding-bottom: 5px;}
        /*动画*/
        .fadeInRight {animation:fadeInRight 1s}
        @keyframes fadeInRight {0% {opacity: 0;transform: translateX(20px)}100% {opacity: 1;transform: translateX(0)}}
        .fadeInLeft {animation:fadeInLeft 1s}
        @keyframes fadeInLeft {0% {opacity: 0;transform: translateX(-20px)}100% {opacity: 1;transform: translateX(0)}}
    </style>
</head>
<body>
<div class="main">
    <!-- header -->
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
            <li class="right"><a href="${pageContext.request.contextPath}/login"><i
                    class="material-icons">person</i></a></li>
        </ul>
    </div>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</div>
<div class="gongneng">
    <div class="gongneng_main" id="gongneng_main">
        <div class="Small_tedian_tit">专业技能介绍</div>
        <div class="gongneng_tab">
            <div class="gongneng_tabmin">
                <div class="gongneng_click cur"><i></i><b>1</b></div>
                <div class="gongneng_click"><i></i><b>2</b></div>
                <div class="gongneng_click"><i></i><b>3</b></div>
                <div class="gongneng_click"><i></i><b>4</b></div>
                <div class="gongneng_click"><i></i><b>5</b></div>
                <div class="gongneng_click"><i></i><b>6</b></div>
                <div class="gongneng_click"><i></i><b>7</b></div>
                <div class="gongneng_click"><i></i><b>8</b></div>

            </div>
        </div>
        <div class="conBox">
            <div class="gongneng_tabcon" style="display:block;">
                <div class="gongneng_left1 fadeInLeft">
                    <img src="statics/spring.png" width="530px";/>
                </div>
                <div class="gongneng_right1">
                    <b>01</b>
                    <em>Spring</em>
                    <p>Spring框架是一个开放源代码的J2EE应用程序框架，由Rod Johnson发起，是针对bean的生命周期进行管理的轻量级容器（lightweight container）。 Spring解决了开发者在J2EE开发中遇到的许多常见的问题，提供了功能强大IOC、AOP及Web MVC等功能。Spring可以单独应用于构筑应用程序，也可以和Struts、Webwork、Tapestry等众多Web框架组合使用，并且可以与 Swing等桌面应用程序AP组合。因此， Spring不仅仅能应用于JEE应用程序之中，也可以应用于桌面应用程序以及小应用程序之中。Spring框架主要由七部分组成，分别是 Spring Core、 Spring AOP、 Spring ORM、 Spring DAO、Spring Context、 Spring Web和 Spring Web MVC。</p>
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right2">
                    <b>02</b>
                    <em>SpringMVC</em>
                    <p>SpringMVC属于SpringFrameWork的后续产品，已经融合在Spring Web Flow里面。Spring 框架提供了构建 Web 应用程序的全功能 MVC 模块。使用 Spring 可插入的 MVC 架构，从而在使用Spring进行WEB开发时，可以选择使用Spring的Spring MVC框架或集成其他MVC开发框架，如Struts1(现在一般不用)，Struts 2(一般老项目使用)等等。</p>
                </div>
                <div class="gongneng_left2 fadeInRight">
                    <img src="statics/springmvc.jpg" />
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_left3 fadeInLeft">
                    <img src="statics/springboot.png" width="530px"; />
                </div>
                <div class="gongneng_right3">
                    <b>03</b>
                    <em>SpringBoot</em>
                    <p>SpringBoot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。</p>

                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right4">
                    <b>04</b>
                    <em>SpringCloud</em>
                    <p>Spring Cloud是一系列框架的有序集合。它利用Spring Boot的开发便利性巧妙地简化了分布式系统基础设施的开发，如服务发现注册、配置中心、消息总线、负载均衡、断路器、数据监控等，都可以用Spring Boot的开发风格做到一键启动和部署。Spring Cloud并没有重复制造轮子，它只是将各家公司开发的比较成熟、经得起实际考验的服务框架组合起来，通过Spring Boot风格进行再封装屏蔽掉了复杂的配置和实现原理，最终给开发者留出了一套简单易懂、易部署和易维护的分布式系统开发工具包。</p>
                </div>
                <div class="gongneng_left4 fadeInRight">
                    <img src="statics/springcloud.png" width="530px"; />
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_left5 fadeInLeft">
                    <img src="statics/docker.png" width="530px"; />
                </div>
                <div class="gongneng_right5">
                    <b>05</b>
                    <em>Docker</em>
                    <p>Docker 是一个开源的应用容器引擎，让开发者可以打包他们的应用以及依赖包到一个可移植的镜像中，然后发布到任何流行的 Linux或Windows 机器上，也可以实现虚拟化。容器是完全使用沙箱机制，相互之间不会有任何接口。</p>
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right6">
                    <b>06</b>
                    <em>MyBatis</em>
                    <p>MyBatis 本是apache的一个开源项目iBatis, 2010年这个项目由apache software foundation 迁移到了google code，并且改名为MyBatis 。2013年11月迁移到Github。</p>
                    <p>iBATIS一词来源于“internet”和“abatis”的组合，是一个基于Java的持久层框架。iBATIS提供的持久层框架包括SQL Maps和Data Access Objects（DAOs）</p>
                </div>
                <div class="gongneng_left6 fadeInRight">
                    <img src="statics/mybatis.png" width="420px"/>
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_left7 fadeInLeft">
                    <img src="statics/MySQL.png" width="530px"/>
                </div>
                <div class="gongneng_right7">
                    <b>07</b>
                    <em>MySQL</em>
                    <p>MySQL是一个关系型数据库管理系统，由瑞典MySQL AB 公司开发，属于 Oracle 旗下产品。MySQL 是最流行的关系型数据库管理系统之一，在 WEB 应用方面，MySQL是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之一。</p>
                    <p>MySQL是一种关系型数据库管理系统，关系数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。</p>
                    <p>MySQL所使用的 SQL 语言是用于访问数据库的最常用标准化语言。MySQL 软件采用了双授权政策，分为社区版和商业版，由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，一般中小型网站的开发都选择 MySQL 作为网站数据库。</p>

                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right6">
                    <b>08</b>
                    <em>Vue</em>
                    <p>Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式JavaScript框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，方便与第三方库或既有项目整合。</p>
                    <p>序平台一键发布，全面获取流量</p>
                </div>
                <div class="gongneng_left6 fadeInRight">
                    <img src="statics/Vue.png" width="420px"/>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    //tab切换
    $('.gongneng_tabmin div').hover(function(){
        var conBox = $("#gongneng_main").find('.conBox');
        $(this).addClass("cur").siblings('.cur').removeClass("cur");
        conBox.find(".gongneng_tabcon").eq($(this).index()).show().siblings(':visible').hide();
    })
</script>
</body>
</html>