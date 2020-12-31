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
        .gongneng_tab{width: 150px;height: 45px;border-radius: 25px;border:1px solid #f3f3f3;margin: 0 auto; box-shadow: 0px -2px 2px #e8e6e6;margin-bottom: 80px;}
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
        <div class="Small_tedian_tit">方向简介</div>
        <div class="gongneng_tab">
            <div class="gongneng_tabmin">
                <div class="gongneng_click cur"><i></i><b>1</b></div>
                <div class="gongneng_click"><i></i><b>2</b></div>
                <div class="gongneng_click"><i></i><b>3</b></div>
            </div>
        </div>
        <div class="conBox">
            <div class="gongneng_tabcon">
                <div class="gongneng_left3 fadeInLeft">
                    <img src="statics/springboot.png" width="530px"; />
                </div>
                <div class="gongneng_right3">
                    <b>01</b>
                    <em>就业方向</em>
                    <p>
                        本专业学生毕业后可以从事各级各类企事业单位的办公自动化处理、计算机安装与维护、网页制作、计算机网络和专业服务器的维护管理和开发工作、动态商务网站开发与管理、软件测试与开发及计算机相关设备的商品贸易等方面的有关工作。
                    </p>
                    <p>
                        除考取国内外名牌大学研究生外，主要毕业去向是计算机软件专业公司﹑信息咨询公司﹑以及金融等其它独资、合资企业。
                    </p>
                </div>
            </div>
            <div class="gongneng_tabcon">
                <div class="gongneng_right4">
                    <b>02</b>
                    <em>就业前景</em>
                    <p>
                        中国的软件行业规模不是很大，有些软件企业在软件制作上，也只是采用了一些软件工程的思想，距离大规模的工业化大生产比较还是有一定的差距；原因有管理体制的问题，市场问题，政策问题，也有软件工程理论不全面和不完善的问题。所以软件工程的研究和应用，以及中国软件行业的进一步发展，都需要一定的既有软件工程的理论基础和研究能力，又有一定的实践经验的软件工程科学技术人员来推动。软件工程的前途是光明的。
                    </p>
                    <p>
                        软件服务外包属于智力人才密集型现代服务业。大量著名外包企业落户宁波。主要就业去向包括软件外包与服务企业、信息产品与服务企业，担任程序员、软件测试员、项目经理等工作岗位。
                    </p>
                </div>
                <div class="gongneng_left4 fadeInRight">
                    <img src="statics/springcloud.png" width="530px"; />
                </div>
            </div>

            <div class="gongneng_tabcon">
                <div class="gongneng_right6">
                    <b>03</b>
                    <em>就业岗位</em>
                    <p>Java方向：JAVA初级程序员、JAVA计算程序员 、 JAVA工程师 、J2EE系统工程师等。</p>
                    <p>.Net方向： .Net程序员网站开发工程师 .Net工程师等。</p>
                    <p>其它方向： 简单的管理信息系统开发和维护人员 、网页制作和客户端脚本程序编写人员 、初级数据库管理和 维护人员 、数据库开发工程师 、系统分析设计工程 、软件项目配置管理员 、文档编写工程师。</p>
                </div>
                <div class="gongneng_left6 fadeInRight">
                    <img src="statics/Vue.png" width="420px"/>
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