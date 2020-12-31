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
            color: black;
            text-decoration: none;
        }

        .nav a[class=content]:hover {
            color: royalblue;
            background-color: #85C4A9;
        }

        .nav ul li ul {
            display: flex;
            flex-direction: column;
        }

        .nav ul li ul li {
            display: none;
        }

        .nav ul li:hover ul li {
            background-color: #1494C6;
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
            background: #E1E5E1!important;
        }
        .gongneng_main{height: 785px;width: 1200px;margin: 0 auto;}
        .Small_tedian_tit{text-align:center;font-size: 32px;color:#333;padding-top: 95px;padding-bottom: 40px;}
        .gongneng_tab{width: 245px;height: 45px;border-radius: 25px;border:1px solid #f3f3f3;margin: 0 auto; box-shadow: 0px -2px 2px #e8e6e6;margin-bottom: 80px;}
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
        <div class="Small_tedian_tit">专业简介</div>
        <div class="gongneng_tab">
            <div class="gongneng_tabmin">
                <div class="gongneng_click cur"><i></i><b>1</b></div>
                <div class="gongneng_click"><i></i><b>2</b></div>
                <div class="gongneng_click"><i></i><b>3</b></div>
                <div class="gongneng_click"><i></i><b>4</b></div>
                <div class="gongneng_click"><i></i><b>5</b></div>
            </div>
        </div>
        <div class="conBox">
            <div class="gongneng_tabcon" style="display:block;">
                <div class="gongneng_left1 fadeInLeft">
                    <img src="statics/spring.png" width="530px";/>
                </div>
                <div class="gongneng_right1">
                    <b>01</b>
                    <em>软件工程</em>
                    <p>软件工程专业是2002年国家教育部新增专业，随着计算机应用领域的不断扩大及中国经济建设的不断发展，软件工程专业将成为一个新的热门专业。软件工程专业以计算机科学与技术学科为基础，强调软件开发的工程性，使学生在掌握计算机科学与技术方面知识和技能的基础上熟练掌握从事软件需求分析、软件设计、软件测试、软件维护和软件项目管理等工作所必需的基础知识、基本方法和基本技能，突出对学生专业知识和专业技能的培养，培养能够从事软件开发、测试、维护和软件项目管理的高级专门人才。</p>
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right2">
                    <b>02</b>
                    <em>主干课程</em>
                    <p>
                        主干学科：马克思主义理论、大学外语、高等数学、大学物理、物理实验、线性代数、概率论与数理统计、程序设计语言、数据结构、离散数学、操作系统、编译技术、软件工程概论、统一建模语言、软件体系结构、软件需求、软件项目管理
                    </p>
                    <p>
                        该专业除了学习公共基础课外，还将系统学习离散数学、数据结构、算法分析、面向对象程序设计、现代操作系统、数据库原理与实现技术、编译原理、软件工程、软件项目管理、计算机安全等课程，根据学生的兴趣还可以选修一些其它选修课。
                    </p>
                    <p>实践环节：毕业实习、课程设计、计算机工程实践、生产实习、毕业设计(论文)。</p>
                </div>
                <div class="gongneng_left2 fadeInRight">
                    <img src="statics/springmvc.jpg" />
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_left5 fadeInLeft">
                    <img src="statics/docker.png" width="530px"; />
                </div>
                <div class="gongneng_right5">
                    <b>03</b>
                    <em>培养目标</em>
                    <p>本专业培养德、智、体等方面全面发展，掌握自然科学和人文社科基础知识，掌握 计算科学基础理论、软件工程专业的基础知识及应用知识，具有软件开发能力以及软件开发实践 的初步经验和项目组织的基本能力，能从事软件工程技术研究、设计、开发、管理、服务等工作的 专门人才。</p>
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right6">
                    <b>04</b>
                    <em>简介</em>
                    <p>
                        软件工程专业是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及到程序设计语言，数据库，软件开发工具，系统平台，标准，设计模式等方面。在现代社会中，软件应用于多个方面。典型的软件比如有电子邮件，嵌入式系统，人机界面，办公套件，操作系统，编译器，数据库，游戏等。同时，各个行业几乎都有计算机软件的应用，比如工业，农业，银行，航空，政府部门等。这些应用促进了经济和社会的发展，使得人们的工作更加高效，同时提高了生活质量。
                    </p>
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
                    <b>05</b>
                    <em>学科地位</em>
                <p>软件工程学科是计算学科的分支，计算学科中理论、抽象、设计等三个学科形态，绑定、大问题的复杂性、概念和形式模型、一致性和完备性、效率、演化、抽象层次、按空间排序、按时间排序、重用、安全性、折衷与决策等十二个基本概念，数学方法、系统科学方法在软件工程学科中占有重要地位。此外，软件工程还十分重视管理过程，以提高软件产品的质量、降低开发成本、保证工程按时完成。系统性、规范性、可度量性也是软件工程非常关注的。</p>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp"%>
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