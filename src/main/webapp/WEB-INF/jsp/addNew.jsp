<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .content{
            width: 80vw;
        }
        .content input{
            width: 50vw;
        }
        .content textarea{
            rows: 10;
            cols: 80;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    添加新闻
                </h1>
            </div>
        </div>
    </div>
    <div class="content">
        <form action="${pageContext.request.contextPath}/addNew" method="post">
            <label>新闻主题<input class="form-control" type="text" name="topic"></label><br>
            <label>新闻内容<textarea name="content" class="form-control" cols="103" rows="20">
            </textarea></label><br>
            <button type="submit" class="btn btn-primary">点击添加</button>
        </form>
    </div>
</div>
</body>
</html>
