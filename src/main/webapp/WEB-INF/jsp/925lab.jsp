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
        body{
            background: wheat!important;
        }
        /*导航栏*/
        .nav {
            background-color: wheat;
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
            background-color: #DEC521;
        }

        .nav ul li ul {
            display: flex;
            flex-direction: column;
        }

        .nav ul li ul li {
            display: none;
        }

        .nav ul li:hover ul li {
            background-color: #995EDB;
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
        .baozhang {float:left;width: 100%;}
        .title{text-align: center}
        .title h4{font-size: 30px;line-height: 30px;}
        .title p{font-size: 16px;line-height: 10px;margin-top: -20px;}
        .clearfix:after{display:block; content:''; clear:both;}
        .clearfix{zoom:1;text-align: center;}
        .fl{float:left;}
        .fr{float:right;}
        .part5 .tBox{
            width: 1154px;
            height: 430px;
            margin: 30px auto 0;
            position: relative;
        }
        .part5 .tBox .picBox{
            width: 1000px;
            margin: 0 auto;
            height: 100%;
            overflow: hidden;
            position: relative;
        }
        #posBox{
            width: 2048px;
            position: absolute;
            left: 0;
            top: 0;
        }
        .part5 .tBox .picBox .roll{
            position: relative;
            margin-right: 24px;
            perspective: 1000px;
            cursor: pointer;
        }
        .part5 .tBox .picBox li .bg{
            width: 100%;
            height: 65px;
            background: #000;
            opacity: 0.8;
            filter:alpha(opacity=80);
            position: absolute;
            left: 0;
            bottom: 0;
        }
        .part5 .tBox .picBox li h3{
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 65px;
            text-align: left;
            padding-left: 13px;
        }

        .part5 .tBox .picBox li .tName{
            font-size: 18px;
            color: #fff;
            padding-top: 13px;
            margin-bottom: 5px;
        }
        .part5 .tBox .picBox li .tTitle{
            font-size: 12px;
            color: #b4b4b4;
        }

        .roll .box-content{
            width: 100%;
            height: 480px;
            position: absolute;
            top: 0;
            left: 0;
            background: #000;
            opacity: 0.8;
            filter:alpha(opacity=80);
            transform: rotateY(90deg);
            transition: all 0.50s ease-in-out 0s;
            overflow: hidden;
        }
        .roll .box-img{
            transform: rotateY(0);
            transition: all 0.50s ease-in-out 0s;
        }
        .roll:hover .box-img{
            transform: rotateY(-90deg);
        }
        .roll:hover .box-content{
            transform: rotateY(0);
        }
        .roll .box-content .t1,.roll .box-content2 .t1{
            font-size: 20px;
            font-weight: bold;
            color: #fff;
            padding-top: 20px;
        }
        .roll .box-content .t2,.roll .box-content2 .t2{
            font-size: 16px;
            color: #fff;
            padding-top: 12px;
        }
        .roll .box-content .t3,.roll .box-content2 .t3{
            width: 190px;
            height: 1px ;
            background: #fff;
            margin: 20px auto 0;
        }
        .roll .box-content .t4,.roll .box-content2 .t4{
            font-size: 14px;
            width: 182px;
            text-align: justify;
            color: #fff;
            margin: 20px auto 0;
        }

        .box-content2{
            position: absolute;
            left: 0px;
            top: -470px;
            width: 100%;
            height: 100%;
            background: #000;
            opacity: 0.7;
            filter:alpha(opacity=70);
            color: #fff;
        }
        .anniuk{width:100%;float: left;text-align: center;}
        .anniuk a{
            text-decoration: none;
            color: #111111;
        }
        .anniu{border:1px solid #0D0D0D;height: 60px;width:550px;line-height: 60px;text-align:center;border-radius: 200px;margin-top: 40px;margin-bottom: 40px;cursor:pointer;font-size: 30px;display: inline-block;}
        .anniu:hover{background: #ffc670;transform: scale(1.05);transition: all 0.5s;}
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
<div class="baozhang">
    <div class="part1 part5">
        <div class="title">
            <h4>925移动开发实验室</h4>
        </div>
        <div class="tBox">

            <div class="picBox">
                <div class="clearfix" id="posBox">

                    <div class="fl roll">
                        <div class="box-img">
                            <img src="statics/jifang5.jpg" width="232" height="430" alt=""/>
                        </div>
                        <div class="box-content">
                            <p class="t1">利亚德联合实验室</p>
                            <p class="t3"></p>
                            <p class="t4">利亚德光电股份有限公司是一家专业从事LED应用产品研发、设计、生产、销售和服务的高新技术企业，致力于为客户提供高效、节能、可靠的LED应用产品及其整体解决方案。目前，利亚德光电股份有限公司生产的LED应用产品主要包括LED全彩显示产品、系统显示产品、创意显示产品、LED电视、LED照明产品和LED背光标识系统等六大类。</p>
                        </div>
                    </div>
                    <div class="fl roll">
                        <div class="box-img"><img src="statics/jifang6.jpg" width="232" height="430" alt="" /> </div>
                        <div class="box-content">
                            <p class="t1">浙江大华联合实验室</p>
                            <p class="t3"></p>
                            <p class="t4">浙江大华技术股份有限公司是领先的监控产品供应商和解决方案服务商，面向全球提供领先的视频存储、前端、显示控制和智能交通等系列化产品。公司自2002年推出业内首台自主研发8路嵌入式DVR以来，一直持续加大研发投入和不断致力于技术创新。每年近10%的销售收入投入研发，现拥有3千余人的研发技术团队，创造众多行业和世界第一，并立志打造高品质、高性价比的精品，持续为客户创造最大价值。</p>
                        </div>
                    </div>

                    <div class="fl roll">
                        <div class="box-img"><img src="statics/jifang7.jpg" width="232" height="430" alt="" /> </div>
                        <div class="box-content">
                            <p class="t1">微智信业联合实验室</p>
                            <p class="t3"></p>
                            <p class="t4">北京微智信业科技有限公司于2003年成立，2016年获得证监会审批，被东方通（300379）成功并购。微智信业专注于互联网网络安全及信息安全、通信业务安全及互联网业务安全两大领域研究，集十余年的技术及行业应用经验积累，产品几乎覆盖目前所有主流需求，是国内研究信息安全技术时间最早、产品线覆盖最广的厂商之一，技术先进、产品成熟度高，综合解决方案能力处于国内领先地位。微智信业在中国移动、中国电信、中国联通及行业客户近30个省。</p>
                        </div>
                    </div>

                    <div class="fl roll">
                        <div class="box-img"><img src="statics/jifang8.jpg" width="232" height="430" alt="" /> </div>
                        <div class="box-content" onclick="interactive.openGreatBear('0', '')">
                            <p class="t1">智能感知联合实验室</p>

                            <p class="t3"></p>
                            <p class="t4">北京中润远华科技有限公司（后称中润远华）成立于2009年2月，主要从事NFC功能的测试服务、NFC测试系统的集成业务，是国内NFC测试领域最专业的系统集成公司。同时，中润远华拥有德国Comprion、法国Micropross、荷兰Collis等国际顶尖专业测试仪表公司在中国的代理资质。</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="anniuk"> <div class="anniu" onclick="interactive.openGreatBear('0', '')"><a href="#">点击快速咨询详情</a></div></div>
    <%@include file="footer.jsp"%>
</div>
</body>
</html>