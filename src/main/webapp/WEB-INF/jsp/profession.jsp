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
        body{
            background-image: url("img/bg.jpg");
            background-position: center center;
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
            z-index: 10;
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
            color: black;
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
            background-color: #CD7732;
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
        *,
        *::before,
        *::after {
            box-sizing: border-box;
            text-rendering: optimizeLegibility;
        }

        html,
        body {
            box-sizing: border-box;
            font-family: "Montserrat", Arial, Helvetica, sans-serif;
            font-size: 10px;
        }
        body {
            font-size: 1.5rem;
            height: 100vh;
            width: 98.9vw;
        }
        .app {
            height: 100%;
            left: 0;
            overflow: hidden;
            position: relative;
            top: 0;
            transition: all 0.2s;
            width: 100%;
        }

        .app__background {
            background-image: url("img/bg.jpg");
            background-position: center center;
            background-size: cover;
            filter: blur(5px) grayscale(1);
            height: 100%;
            position: absolute;
            transform: scale(1.1);
            width: 100%;
        }
        .app__background::before {
            background: rgba(44, 126, 76, 0.685);
            content: "";
            height: 100%;
            left: 0;
            position: absolute;
            top: 0;
            width: 100%;
        }

        .app__inner {
            display: flex;
            flex-direction: column;
            height: 100%;
            left: 50%;
            max-width: 120rem;
            overflow-x: hidden;
            position: absolute;
            transform: translateX(-50%);
            width: 100%;
        }

        .slider {
            height: 50rem;
            position: relative;
            width: 100%;
        }

        .slider__list {
            display: flex;
            height: 100%;
            list-style-type: none;
            margin-top: 3rem;
            position: relative;
            transition: all 0.3s;
            width: 100%;
        }

        .slider__item {
            position: absolute;
            transition: transform 0.2s;
        }
        .slider__item .slider__item-img {
            box-shadow: 1rem 1rem 2rem rgba(0, 0, 0, 0.25), 0.6rem 0.6rem 0.6rem rgba(0, 0, 0, 0.35);
            height: 20rem;
            object-fit: cover;
            position: absolute;
            right: 0;
            top: 0;
            transition: width 0.5s, height 0.5s;
            width: 14rem;
            margin: -25px;
        }
        .slider__item:first-child .slider__item-img {
            box-shadow: 1.9rem 1.9rem 3.8rem rgba(0, 0, 0, 0.5), 1.5rem 1.5rem 1.2rem rgba(0, 0, 0, 0.3);
            height: 71rem;
            width: 50rem;
        }

        .text {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            left: 52.6rem;
            position: absolute;
            top: 24.5rem;
        }

        .text__slider-btn {
            align-items: flex-start;
            border-radius: 20%;
            color: #00bfa5;
            cursor: pointer;
            display: flex;
            font-size: 8rem;
            font-weight: bold;
            height: 5rem;
            justify-content: center;
            line-height: 3.7rem;
            overflow: hidden;
            transition: all 0.2s;
            width:8rem;
        }
        .text__slider-btn:hover {
            color: #40ffe5;
        }
        .text__slider-btn:active {
            color: #00bfa5;
            transform: scale(1.1);
        }

        .text__group {
            color: white;
        }
        .text__group h3 {
            font-size: 3rem;
        }

        .text__synopsis {
            line-height: 2.5rem;
            text-indent: 3rem;
        }

        .text__rating {
            color: white;
            display: flex;
            left: 53.5rem;
        }

        .text__rating-average {
            margin-right: 1rem;
        }

        .text__rating-number {
            margin-left: 1rem;
        }

        .text__rating-star-list {
            display: flex;
        }

        .text__rating-star {
            clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);
            height: 2rem;
            width: 2rem;
            z-index: 10;
        }
        .text__rating-star:not(:first-child) {
            margin-left: 0.5rem;
        }

        .text__rating-star-fill {
            background: yellow;
            height: 100%;
        }
    </style>
</head>
<body>
<div class="main">
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
</div>
<div class="app">
    <div class="app__background"></div>
    <div class="app__inner">
        <div class="slider">
            <ul class="slider__list"></ul>
        </div>
        <div class="text">
            <div class="text__inner">
                <div class="text__slider-btn" onClick="rotate()">
                    &#8594;
                </div>
                <div class="text__group">
                    <h3 class="text__title"></h3>
                    <div class="text__rating">
                        <span class="text__rating-average">难度指数： </span>
                        <ul class="text__rating-star-list"></ul>
                        <span class="text__rating-number"></span>
                    </div>
                    <p class="text__synopsis"></p>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    const movies = [
        {
            image: "img/docker.png",
            title: "Docker",
            rating: 7,
            synopsis:
                "Docker 是一个开源的应用容器引擎，让开发者可以打包他们的应用以及依赖包到一个可移植的镜像中，然后发布到任何流行的 Linux或Windows 机器上，也可以实现虚拟化。容器是完全使用沙箱机制，相互之间不会有任何接口。Docker 是 PaaS 提供商 dotCloud 开源的一个基于 LXC 的高级容器引擎，源代码托管在 Github 上, 基于go语言并遵从Apache2.0协议开源。Docker自2013年以来非常火热，无论是从 github 上的代码活跃度，还是Redhat在RHEL6.5中集成对Docker的支持, 就连 Google 的 Compute Engine 也支持 docker 在其之上运行。一款开源软件能否在商业上成功，很大程度上依赖三件事 - 成功的 user case(用例), 活跃的社区和一个好故事。 dotCloud 之家的 PaaS 产品建立在docker之上，长期维护且有大量的用户，社区也十分活跃。" },

        {
            image: "img/mybatis.png",
            title: "MyBatis",
            rating: 6.5,
            synopsis:
                "MyBatis 本是apache的一个开源项目iBatis, 2010年这个项目由apache software foundation 迁移到了google code，并且改名为MyBatis 。2013年11月迁移到Github。iBATIS一词来源于“internet”和“abatis”的组合，是一个基于Java的持久层框架。iBATIS提供的持久层框架包括SQL Maps和Data Access Objects（DAOs）MyBatis 是一款优秀的持久层框架，它支持定制化 SQL、存储过程以及高级映射。MyBatis 避免了几乎所有的 JDBC 代码和手动设置参数以及获取结果集。MyBatis 可以使用简单的 XML 或注解来配置和映射原生信息，将接口和 Java 的 POJOs(Plain Ordinary Java Object,普通的 Java对象)映射成数据库中的记录。" },

        {
            image: "img/mysql.png",
            title: "MySQL",
            rating: 7.6,
            synopsis:
                "MySQL是一个关系型数据库管理系统，由瑞典MySQL AB 公司开发，属于 Oracle 旗下产品。MySQL 是最流行的关系型数据库管理系统之一，在 WEB 应用方面，MySQL是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之一。MySQL是一种关系型数据库管理系统，关系数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。MySQL所使用的 SQL 语言是用于访问数据库的最常用标准化语言。MySQL 软件采用了双授权政策，分为社区版和商业版，由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，一般中小型网站的开发都选择 MySQL 作为网站数据库。" },

        {
            image: "img/nginx.png",
            title: "Nginx",
            rating: 7.8,
            synopsis:
                'Nginx (engine x) 是一个高性能的HTTP和反向代理web服务器，同时也提供了IMAP/POP3/SMTP服务。Nginx是由伊戈尔·赛索耶夫为俄罗斯访问量第二的Rambler.ru站点（俄文：Рамблер）开发的，第一个公开版本0.1.0发布于2004年10月4日。其将源代码以类BSD许可证的形式发布，因它的稳定性、丰富的功能集、示例配置文件和低系统资源的消耗而闻名。2011年6月1日，nginx 1.0.4发布。Nginx是一款轻量级的Web 服务器/反向代理服务器及电子邮件（IMAP/POP3）代理服务器，在BSD-like 协议下发行。其特点是占有内存少，并发能力强，事实上nginx的并发能力在同类型的网页服务器中表现较好，中国大陆使用nginx网站用户有：百度、京东、新浪、网易、腾讯、淘宝等。' },
        {
            image: "img/springboot.png",
            title: "SpringBoot",
            rating: 7.7,
            synopsis:
                'Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。通过这种方式，Spring Boot致力于在蓬勃发展的快速应用开发领域(rapid application development)成为领导者。SpringBoot是由Pivotal团队在2013年开始研发、2014年4月发布第一个版本的全新开源的轻量级框架。它基于Spring4.0设计，不仅继承了Spring框架原有的优秀特性，而且还通过简化配置来进一步简化了Spring应用的整个搭建和开发过程。另外SpringBoot通过集成大量的框架使得依赖包的版本冲突，以及引用的不稳定性等问题得到了很好的解决。' },
    ];

    const sliderList = document.querySelector(".slider__list");
    const title = document.querySelector(".text__title");
    const starList = document.querySelector(".text__rating-star-list");
    const ratingNum = document.querySelector(".text__rating-number");
    const synopsis = document.querySelector(".text__synopsis");

    let step = 0;

    const composeChild = (c, i) => addChild(createChild(c, i));

    const addChild = c => sliderList.appendChild(c);

    const createChild = (movie, p) => {
        if (p == 0) renderText(movie);

        const c = document.createElement("li");
        c.classList.add("slider__item");
        let index = 45.5 + 17.3 * p;
        c.style.transform = "translateX("+index+"rem)"
        const img = document.createElement("img");
        img.classList.add("slider__item-img");
        img.src = movie.image;

        c.appendChild(img);

        return c;
    };

    const updateChild = (c, i) => {
        const p = (i + movies.length - 1) % movies.length;
        let index = 45.5 + 17.3 * p;
        c.style.transform = "translateX("+index+"rem)"
    };

    const renderStars = (stars, movie) => {
        const pct = movie.rating * 10;

        Array.from(Array(stars).keys()).forEach(i => {
            const c = document.createElement("li");
            c.classList.add("text__rating-star");

            const div = document.createElement("div");
            div.classList.add("text__rating-star-fill");
            div.style.width = (i === stars - 1 && stars !== movie.rating ? pct : 100) + '%'; // prettier-ignore

            c.append(div);

            starList.appendChild(c);
        });
    };

    const renderText = movie => {
        const stars = Math.ceil(movie.rating);

        title.textContent = movie.title;
        let index = movie.rating;
        ratingNum.textContent = index+" / 8";
        synopsis.textContent = movie.synopsis;
        starList.innerHTML = "";
        renderStars(stars, movie);
    };

    const rotate = () => {
        const currentMovie = movies[step];
        const nextMovie = movies[(step + 1) % movies.length];
        const newChild = createChild(currentMovie, movies.length - 1);
        step = (step + 1) % movies.length;

        Array.from(sliderList.children).forEach(updateChild);
        sliderList.removeChild(sliderList.childNodes[0]);
        sliderList.appendChild(newChild);
        renderText(nextMovie);
    };

    const initSlides = () => movies.forEach(composeChild);

    initSlides();
</script>
</body>
</html>