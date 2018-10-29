<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户个人中心</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <a href="welcome.html" target="iframe">
            <div class="layui-logo">
                <h2>用户个人中心</h2>
            </div>
        </a>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
            <li class="layui-nav-item" lay-unselect="" style="">
                <a href="javascript:;">
                    <cite>${loginUser.uNickName}，欢迎回来</cite>
                    <span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child layui-anim layui-anim-upbit">
                    <dd style="text-align: center;"><a href="updatepwd.html" target="iframe">修改密码</a></dd>
                    <hr>
                    <dd layadmin-event="logout" style="text-align: center;"><a href="signout">退出登录</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-side">
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:;">用户信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="myorder" target="iframe">我的租房信息</a></dd>
                    <dd><a href="updatepwd" target="iframe">修改我的密码</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:;">房源信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="addHouse" target="iframe">发布房源信息</a></dd>
                    <dd><a href="toUserRentalPage" target="iframe">我发布的信息</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-body">
        <iframe src="welcome" width="100%" height="100%" frameborder="0" name="iframe" scrolling="auto" seamless></iframe>
    </div>
    <div class="layui-footer" style="text-align: center;font-size: 16px">
        <p>2018年 毕业设计</p>
    </div>
</div>
<script src="layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'], function () {
        var element = layui.element,
            $ = layui.jquery;
    });
</script>
</body>
</html>
