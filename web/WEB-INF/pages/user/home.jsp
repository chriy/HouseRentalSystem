<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <a href="${pageContext.request.contextPath}/user/welcome.html" target="iframe">
            <div class="layui-logo">
                <h2>用户个人中心</h2>
            </div>
        </a>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
            <li class="layui-nav-item" lay-unselect="" style="">
                <a href="javascript:void(0)">
                    <cite>${loginUser.userNickName}，欢迎回来</cite>
                    <span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child layui-anim layui-anim-upbit">
                    <dd style="text-align: center;">
                        <a href="${pageContext.request.contextPath}/user/updatePassword.html" target="iframe">修改密码</a>
                    </dd>
                    <hr>
                    <dd layadmin-event="logout" style="text-align: center;">
                        <a href="${pageContext.request.contextPath}/user/logout">退出登录</a>
                    </dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-side">
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:void(0)">用户信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/order/myOrder.html" target="iframe">我的租房信息</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/user/updatePassword.html" target="iframe">修改我的密码</a>
                    </dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:void(0);">房源信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/house/addHouse.html" target="iframe">发布房源信息</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/user/userRental.html" target="iframe">我发布的信息</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-body">
        <iframe src="${pageContext.request.contextPath}/user/welcome.html" width="100%" height="100%" frameborder="0"
                name="iframe" scrolling="auto"
                seamless></iframe>
    </div>
    <div class="layui-footer" style="text-align: center;font-size: 16px">
        <p>2018-2020 &copy; 房屋租赁网 懂您的需求 服务于心</p>
    </div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'], function () {
        let element = layui.element,
            $ = layui.jquery;
    });
</script>
</body>
</html>
