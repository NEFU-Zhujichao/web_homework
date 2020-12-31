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
            <h4>923创新实验室</h4>
        </div>

        <div class="tBox">

            <div class="picBox">
                <div class="clearfix" id="posBox">

                    <div class="fl roll">
                        <div class="box-img">
                            <img src="statics/jifang1.jpg" width="232" height="430" alt=""/>
                        </div>
                        <div class="box-content">
                            <p class="t1">通信联合实验室</p>
                            <p class="t3"></p>
                            <p class="t4">四川九洲电器集团有限责任公司（以下简称集团公司）是军民融合发展的大型高科技企业集团——是国家从事二次雷达系统及设备科研、生产的大型骨干企业；是从事数字电视设备、有线电视宽带综合业务信息网络系统、电线电缆光缆、车载指挥通信系统、LED（半导体照明产品）、物联网（RFID射频识别产品、安全溯源、视频监控等产品）、应用电子系统、电子政务和电子商务软件及手机等个人消费终端等的开发、制造、经营和服务的高科技企业。</p>
                        </div>
                    </div>
                    <div class="fl roll">
                        <div class="box-img"><img src="statics/jifang2.jpg" width="232" height="430" alt="" /> </div>
                        <div class="box-content">
                            <p class="t1">浩瀚深度联合实验室</p>
                            <p class="t3"></p>
                            <p class="t4">北京浩瀚深度信息技术股份有限公司成立于1994年，是国内通信行业中极少数从设备制造到数据采集，从大数据平台构建到海量数据挖掘，从流量管理到流量经营提供全程解决方案的企业。目前公司具有自主知识产权的TMA流控系列产品已广泛应用于运营商、政府等领域，遍布全国31省市，总管理链路带宽达100000G以上。</p>
                        </div>
                    </div>

                    <div class="fl roll">
                        <div class="box-img"><img src="statics/jifang3.jpg" width="232" height="430" alt="" /> </div>
                        <div class="box-content">
                            <p class="t1">通信光电子联合实验室</p>
                            <p class="t3"></p>
                            <p class="t4">亨通集团，是服务于光纤光网和电力电网及网络建设运营、金融投资、新能源、新材料等领域的国家创新型企业，是中国光纤光网、电力电网领域规模最大的系统集成商与网络服务商，跻身中国企业500强、中国民企100强、全球光纤通信前3强。江苏亨通光电股份有限公司是中国亨通集团公司的核心层企业之一，是专业生产各类光缆产品的股份有限公司，公司占地面积10万平方米，其中厂房面积5.5万平方米，拥有500多名员工的国家重点企业。</p>
                        </div>
                    </div>

                    <div class="fl roll">
                        <div class="box-img"><img src="statics/jifang4.jpg" width="232" height="430" alt="" /> </div>
                        <div class="box-content" onclick="interactive.openGreatBear('0', '')">
                            <p class="t1">大数据安全联合实验室</p>

                            <p class="t3"></p>
                            <p class="t4">二次云科技（深圳）有限公司2015年10月成立于深圳市南山高新技术科技园，是一家服务于互联网经济大市场的创新生态型公司，公司专注于搭建人和商品之间的智能信任，通过溯源认证和诚信共享平台服务，传递商品内涵、提升品牌理念、重塑经营者价值。</p>
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