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
        }
        /*侧边栏*/
        .sidebar{
            min-width: 200px;
            margin: 0 20px;
            border-left: 12px solid green;
            padding: 0;
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
            color: #5c307d;
            border-left: 3px solid orange;
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
        .tip a:hover{
            color: green;
        }
        .header{
            border-bottom: #d5e1dd 1px solid;
            margin-bottom: 10px;
        }
        .list-right .content{
            margin-top: 30px;
        }
        .content p{
            text-indent: 2em;
            font-size: 14px;
            color: #666666;
        }
        .list-right .teachers h3{
            font-size: 18px;
            color: #22132d;
            border-bottom: 2px solid #BBBBBB;
            padding-bottom: 1em;
            margin-bottom: 1em;
            padding-top: 0.5em;
            width: 100%;
        }
        .list-right .teachers table{
            width: 100%;
            text-align: left;
            margin-left: 20px;
        }
        .list-right .teachers table a{
            text-decoration: none;
            display: list-item;
            padding: 20px 5px;
            color: #4F608C;
        }
        .list-right .teachers table a:hover{
            color: purple;
        }
        .table tr{
            text-align: center;
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
                    <li><a href="${pageContext.request.contextPath}/introduce">师资介绍</a></li>
                    <li><a href="${pageContext.request.contextPath}/professors">教授</a></li>
                    <li><a href="${pageContext.request.contextPath}/associateProfessors">副教授</a></li>
                    <li><a href="${pageContext.request.contextPath}/teachers">讲师</a></li>
                </ul>
            </div>
        </div>
        <div class="list-right">
            <div class="header">
                <h3>师资介绍</h3>
                <div class="tip">
                    <span>您当前所在位置：</span><a href="${pageContext.request.contextPath}/index.jsp">首页</a>
                    <span>>></span><a href="${pageContext.request.contextPath}/introduce">师资介绍</a>
                </div>
            </div>
            <div class="content">
                <p>
                    随着高等教育的快速发展，学校积极把握机遇，开拓创新，规范师资队伍建设和管理工作，加大师资队伍建设和人才培养力度，依托教育部各个层次人才计划，实施“名师英才工程”人才培养计划，大力支持教师培训、进修、国内外访学，大力引进国内外优秀人才，强化教师队伍服务和管理工作，建立健全教师考核机制，加强学术梯队建设，优化教师队伍职称、学历、学缘、年龄结构，提高教师队伍整体水平，师资队伍发展呈现良好态势。 
                </p>
                <p>
                    学校目前专任教师1328人，其中教授280人，副教授550人，教授、副教授所占比例达62.5%；具有博士学位的教师724人，占教师总数的54.52%；具有硕士学位的教师512人，占教师总数的38.55%；合计硕士学位以上人员占93.07%；教师中外校毕业生比例占教师总数的70.12%。  
                </p>
                <p>在教师队伍中，一批中青年学者学术精湛、锐意创新，成为国内外具有重要影响的著名学者和学术带头人。其中，中国工程院院士2名，双聘院士5名，“长江学者”特聘教授4名，国家杰出青年基金获得者1名，新世纪优秀人才支持计划入选者32名，享受国务院政府特殊津贴专家33名，国家有突出贡献中青年专家3名，省部级有突出贡献中青年专家16名，全国“百千万人才工程”人选4名，“新世纪百千万工程”人选5名，龙江学者特聘教授10名、讲座教授3名、青年学者1名，全国优秀博士学位论文获得者3名。</p>
            </div>
            <div class="col-md-12 teachers">
                <h3>两院院士</h3>
                <table>
                    <tbody>
                        <tr>
                            <td><span></span><a href="">马建章</a></td>
                            <td><span></span><a href="">李坚</a></td>
                            <td><span></span><a href="">唐守正</a></td>
                            <td><span></span><a href="">宋湛谦</a></td>
                        </tr>
                        <tr>
                            <td><span></span><a href="">方智远</a></td>
                            <td><span></span><a href="">夏咸柱</a></td>
                            <td><span></span><a href="">蒋剑春</a></td>
                        </tr>
                    </tbody>
                </table>
                <h3>教学名师</h3>
                <div class="row col-md-12 column">
                    <table border="2" class="table table-hover table-striped">
                        <thead>
                        <tr>
                            <th>时&nbsp;间</th>
                            <th>校&nbsp;级</th>
                            <th>省&nbsp;级</th>
                            <th>国家级</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>第一届 （2003年）</td>
                            <td>肖向红&nbsp;戚大伟&nbsp;许正霖&nbsp;张晶&nbsp;于黎明</td>
                            <td>肖向红</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第二届 （2005年）</td>
                            <td>马建章&nbsp;严善春&nbsp;贾艳敏&nbsp;宋冶&nbsp;周玉华</td>
                            <td>马建章</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第三届 （2007年）</td>
                            <td>孙中武&nbsp;张 伟&nbsp;李 斌&nbsp;杨传平&nbsp;邹红菲</td>
                            <td>宋 冶</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第四届 （2008年）</td>
                            <td>李凤日&nbsp;宋魁彦</td>
                            <td>严善春</td>
                            <td>马建章</td>
                        </tr>
                        <tr>
                            <td>第五届 （2009年）</td>
                            <td>张德刚&nbsp;迟德富</td>
                            <td>杨传平</td>
                            <td>杨传平</td>
                        </tr>
                        <tr>
                            <td>第六届 （2011年）</td>
                            <td>董希斌&nbsp;穆立蔷&nbsp;郭明辉</td>
                            <td>郭明辉&nbsp;邹红菲</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第七届 （2013年）</td>
                            <td>吕洁华&nbsp;裴玉龙&nbsp;王阿川</td>
                            <td>张伟&nbsp;吕洁华</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第八届 （2015年）</td>
                            <td>范文义&nbsp;岳桦&nbsp;程瑞香&nbsp;李玉花</td>
                            <td>岳桦</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第九届 （2017年）</td>
                            <td>冯富娟&nbsp;周孜予&nbsp;王玉峰</td>
                            <td>程瑞香&nbsp;裴玉龙</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第十届 （2018年）</td>
                            <td>汪金英&nbsp;李继红&nbsp;张韫</td>
                            <td>迟德富</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>第十一届 （2019年）</td>
                            <td>杨丽艳&nbsp;刘志明&nbsp;贾 杰</td>
                            <td>冯富娟</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>小计</td>
                            <td>38人</td>
                            <td>14人</td>
                            <td>2人</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
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