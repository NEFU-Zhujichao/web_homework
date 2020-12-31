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
            background-color: gray;
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
            background-color: #DBD8D8;
        }

        .nav ul li ul {
            display: flex;
            flex-direction: column;
        }

        .nav ul li ul li {
            display: none;
        }

        .nav ul li:hover ul li {
            background-color: #797474;
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
        }

        .right:hover a {
            color: royalblue;
        }

        * {
            word-break: break-all;
        }

        body, div, ul, ol, li, dl, dt, dd, h1, h2, h3, h4, h5, h6, form, input, textarea, p {
            margin: 0 auto;
            padding: 0px;
            font-size: 12px;
            font-family: 微软雅黑;
            width: 100%;
            background-color: rgba(33,33,33,1.00);
        }
        ul {
            list-style: none;
        }
        a {
            text-decoration: none;
        }
        .bodyCon08 {
            position: relative;
            top: -50px;
        }
        .bodyCon08 .students {
            margin: 0 auto;
            width: 1100px;
            height: 94vh;
            position: relative;
        }

        .bodyCon08 .students p.PP {
            width: 510px;
            height: 50px;
            font-size: 16px;
            color: #333;
            text-align: center;
            position: absolute;
            top: 60px;
            left: 300px;
        }

        #four_flash {
            position: relative;
            width: 1100px;
            height: 400px;
            margin: 0 auto;
            position: absolute;
            bottom: 40px;
        }

        #four_flash .flashBg {
            width: 998px;
            height: 400px;
            margin: 0 auto;
            position: relative;
            overflow: hidden;
        }

        #four_flash .flashBg ul.mobile {
            width: 2000%;
            height: 400px;
            position: absolute;
            top: 15px;
            left: 0;
        }

        #four_flash .flashBg ul.mobile li {
            border: 1px solid #2E324B;
            float: left;
            width: 297px;
            height: 340px;
            margin-left: 26px;
            padding-top: 40px;
            color: #6C6E85;
            transition: all 1s ease 0s;
        }

        #four_flash .flashBg ul.mobile li:hover {
            border: 1px solid rgba(0, 200, 217, 0.80);
            color: #fff;
            -webkit-box-shadow: 0px 0px 5px 10px rgba(0, 0, 0, 1.00);
            box-shadow: 0px 0px 10px 10px rgba(0, 0, 0, .5);
        }

        #four_flash .flashBg ul.mobile li img {
            width: 140px;
            height: 140px;
            display: block;
            margin: 0 auto;
            border: 4px solid #343851;
            border-radius: 82px;
        }

        #four_flash .flashBg ul.mobile li dd {
            font-size: 20px;
            width: 250px;
            line-height: 60px;
            text-align: center;
            border-bottom: 1px solid #6C6E85;
        }

        #four_flash .flashBg ul.mobile li p {
            font-size: 16px;
            text-align: center;
            width: 260px;
            line-height: 24px;
            margin-top: 10px;
        }

        #four_flash .flashBg ul.mobile li a {
            display: block;
            background: url("statics/jiantou.png") no-repeat;
            width: 70px;
            height: 70px;
            border: 0px;
            margin: 8px auto;
        }
        #four_flash .flashBg ul.mobile li a:hover {
            background: url("statics/jiantou2.png") no-repeat;
        }
        #four_flash .but_left {
            width: 50px;
            height: 100px;
            position: absolute;
            top: 136px;
            left: 0px;
        }

        #four_flash .but_right {
            width: 50px;
            height: 100px;
            position: absolute;
            top: 136px;
            right: 0px;
        }

        #four_flash .but_left:hover {
            background: url("statics/qianxleft1.png") no-repeat;
        }

        #four_flash .but_right:hover {
            background: url("statics/qianxr1.png") no-repeat;
        }
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
    <div class="bodyCon08"><!--学员-->
        <div class="students">

            <div id="four_flash">
                <div class="flashBg">
                    <ul class="mobile">
                        <li>
                            <img src="statics/sujianmin.jpg"/>
                            <dd>苏健民</dd>
                            <p>苏健民，教授，硕士，硕士生导师,软件工程一级学科带头人</p>
                            <a href="${pageContext.request.contextPath}/professor"></a>
                        </li>
                        <li>
                            <img src="statics/renhonge.jpg"/>
                            <dd>任洪娥</dd>
                            <p>任洪娥，教授，博士，东北林业大学“计算机应用技术”学科带头人</p>
                            <a href="${pageContext.request.contextPath}/professor"></a>
                        </li>
                        <li>
                            <img src="statics/wangachuan.jpg"/>
                            <dd>王阿川</dd>
                            <p>王阿川，教授，工学博士，博士生导师</p>
                            <a href="${pageContext.request.contextPath}/professor"></a>
                        </li>
                        <li>
                            <img src="statics/liuyaqiu.jpg"/>
                            <dd>刘亚秋</dd>
                            <p>刘亚秋，教授，博士生导师，哈尔滨工业大学导航、制导与控制专业博士</p>
                            <a href="${pageContext.request.contextPath}/professor"></a>
                        </li>
                        <li>
                            <img src="statics/zhaopeng.jpg"/>
                            <dd>赵鹏</dd>
                            <p>赵鹏，男，工学博士，现为林业信息工程学科点的教授/博导</p>
                            <a href="${pageContext.request.contextPath}/professor"></a>
                        </li>
                        <li>
                            <img src="statics/jingweipeng.png"/>
                            <dd>景维鹏</dd>
                            <p>景维鹏，教授/博士生导师，国家林业局林业大数据副主任</p>
                            <a href="${pageContext.request.contextPath}/professor"></a>
                        </li>
                    </ul>
                </div>
                <div class="but_left"><img src="statics/qianxleft.png"/></div>
                <div class="but_right"><img src="statics/qianxr.png"/></div>
            </div>

        </div>
    </div>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript">
        //学员
        var _index5 = 0;

        $("#four_flash .but_right img").click(function () {
            _index5++;
            var len = $(".flashBg ul.mobile li").length;
            if (_index5 + 5 > len) {
                $("#four_flash .flashBg ul.mobile").stop().append($("ul.mobile").html());
            }
            $("#four_flash .flashBg ul.mobile").stop().animate({left: -_index5 * 326}, 1000);
        });

        $("#four_flash .but_left img").click(function () {
            if (_index5 == 0) {
                $("ul.mobile").prepend($("ul.mobile").html());
                $("ul.mobile").css("left", "-1380px");
                _index5 = 6
            }
            _index5--;
            $("#four_flash .flashBg ul.mobile").stop().animate({left: -_index5 * 326}, 1000);
        });
    </script>
</div>
</div>

</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</body>
</html>