<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *,
        body,
        html,
        ul,
        li {
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }
        ul,
        li {
            list-style: none;
            cursor:pointer;
        }

        .container {
            position: absolute;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #54307d;
            cursor:pointer;
            transform-style: preserve-3d;
            perspective: 800px;
        }

        .container .main {
            width: 500px;
            height: 500px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.3);
            background: #4c317a;
            display: flex;
            justify-content: center;
            align-items: center;
            transform-style: preserve-3d;
            perspective: 800px;
            animation: mainplay 1s linear forwards;
        }
        @keyframes mainplay{
            from{transform: scale(0) rotate(360deg); opacity: 0;}
            to{transform: scale(1)  rotate(0deg); opacity: 1;}
        }
        .container .main .registerpage {
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .container .main .bg {
            width: 100%;
            height: 100%;
            position: absolute;
            background: linear-gradient(#6c39c7, #65f0ffbd);
            z-index: -1;
            animation: clipplay 2s infinite alternate linear;
        }

        @keyframes clipplay {
            from {
                clip-path: polygon(20% 0%, 0% 20%, 9% 50%, 0% 80%, 20% 100%, 53% 93%, 80% 100%, 100% 80%, 89% 50%, 100% 20%, 80% 0%, 48% 13%);
            }

            to {
                clip-path: polygon(20% 0%, 0% 20%, 0 52%, 0% 80%, 20% 100%, 50% 100%, 80% 100%, 100% 80%, 100% 48%, 100% 20%, 80% 0%, 48% 0);
            }
        }

        .container .main .formone {
            width: 80%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            /* display: none; */
        }

        .container .main .formone div {
            width: 100%;
            flex: 1;
            text-align: center;
        }

        .container .main .formone .title {
            display: flex;
            justify-content: center;
            align-items: center;
            color: #6ad6c8f0;
            font-size: 40px;
        }

        .container .main .formone .username {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container .main .formone input {
            width: 100%;
            height: 70%;
            line-height: 100%;
            border-radius: 5px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            background: transparent;
            color: white;
            outline: none;
            text-align: center;
            box-shadow: 0px 0px 2px 0px #6c569a;
        }

        ::-webkit-input-placeholder {
            /* WebKit browsers */
            color: white;
            font-size: 16px;
        }

        .container .main .formone input:hover {
            box-shadow: 0px 0px 20px 0px #4787d2;
        }

        .container .main .formone button {
            width: 100%;
            height: 70%;
            line-height: 100%;
            border-radius: 5px;
            border: none;
            background: #714cac;
            color: white;
            outline: none;
            cursor: pointer;
            transition: 0.5s;
        }
        .container .main .formone button:hover{
           transform: scale(1.1);
        }
        .container .main .formone .loginbtn{
            position: relative;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="main">
        <div class="bg"></div>
        <form class="formone" action="${pageContext.request.contextPath}/loginto" method="post">
            <div class="title">欢迎登陆</div>
            <div class="username"><input type="text" name="username"  v-model="username" value="" placeholder="请输入账号" /></div>
            <div class="password"><input type="password" name="pwd" v-model="password" id="" value="" placeholder="请输入密码" /></div>
            <div class="verification">是否验证？</div>
            <div class="loginbtn">
                <button type="submit">登录</button>
            </div>
        </form>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript">
    let formone=document.querySelector('.formone');
    let registerpage=document.querySelector('.registerpage');
    let registerbtn=document.querySelector('.registerbtn');
    let resetbtn=document.querySelector('.resetbtn');
    registerbtn.addEventListener("click",()=>{
        formone.style.display='none';
        registerpage.style.display="flex";
    })
    resetbtn.addEventListener("click",()=>{
        formone.style.display='flex';
        registerpage.style.display="none";
    })
</script>
</body>
</html>
