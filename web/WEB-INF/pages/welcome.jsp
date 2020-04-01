<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎回来</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <style>
        body{
            margin: 0;padding: 0;}
        .welcome{
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            width: 800px;
            height: 200px;
            text-align: center;
        }
        .welcome span{
            font-size: 90px;
            color: #009688;
        }
        .wel-world{
            font-size: 34px;
            color: #009688;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="welcome">
    <p><span class="layui-icon layui-icon-tree"></span></p>
    <p class="wel-world">欢迎访问后台管理系统！</p>
</div>
</body>
</html>