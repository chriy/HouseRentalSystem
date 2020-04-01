<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <a href="${pageContext.request.contextPath }/user/welcome.html" target="iframe">
            <div class="layui-logo">
                <h2>后台管理系统</h2>
            </div>
        </a>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
            <li class="layui-nav-item" style="">
                <a href="javascript:void(0)">
                    <cite>超级管理员</cite>
                    <span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child layui-anim layui-anim-upbit">
                    <dd>
                        <a href="${pageContext.request.contextPath }/admin/changePassword.html" target="iframe">修改密码</a>
                    </dd>
                    <hr>
                    <dd style="text-align: center;">
                        <a href="${pageContext.request.contextPath }/admin/logout">退出</a>
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
                    <dd><a href="${pageContext.request.contextPath }/admin/allUser.html" target="iframe">查看所有用户</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/admin/changePassword.html" target="iframe">管理员密码更改</a>
                    </dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:void(0)">房源信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath }/admin/houseList.html" target="iframe">所有房源信息</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/house/addHouse.html" target="iframe">添加房源信息</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-body">
        <iframe src="${pageContext.request.contextPath }/user/welcome.html" width="100%" height="100%" frameborder="0"
                name="iframe" scrolling="auto" seamless></iframe>
    </div>
    <footer class="layui-footer" style="text-align: center;font-size: 16px">
        <p>2018-2020 &copy; 房屋租赁网 懂您的需求 服务于心</p>
    </footer>
</div>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element'], function () {
        let element = layui.element, $ = layui.jquery;
    });
</script>
</body>
</html>
