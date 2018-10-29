<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
</head>
<body>
<div class="layui-carousel" id="bg-item">
    <div class="loginpane">
        <h3>管理员登录</h3>
        <hr class="layui-bg-orange">
        <div class="login">
            <form class="layui-form layui-form-pane" class="admin-form" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">账&emsp;号</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" required lay-verify="required" placeholder="请输入管理员账号"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密&emsp;码</label>
                    <div class="layui-input-block">
                        <input type="password" name="userpwd" required lay-verify="required" placeholder="请输入管理员密码"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <button lay-submit lay-filter="admin" class="layui-btn layui-btn-fluid layui-btn-lg layui-btn-warm layui-btn-radius">登录</button>
                </div>
            </form>
        </div>
    </div>
    <div carousel-item>
        <div style="background: url('${pageContext.request.contextPath}/img/banner2.jpg')no-repeat center/cover"></div>
    </div>
</div>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script>
    layui.use(['element', 'carousel', 'layer','form'], function () {
        var element = layui.element,
            carousel = layui.carousel,
            $ = layui.jquery,
            layer = layui.layer,
            form = layui.form;
        carousel.render({
            elem: "#bg-item",
            anim: "fade",
            full: true,
            arrow: 'none',
            indicator: 'none'
        });
        
        form.on("submit(admin)",function (data) {
            $.post("adminAccess",data.field,function (result) {
            	console.log(data.field)
                if(result == "OK"){
                    window.location.href="toAdminHomePage";
                }else{
                    layer.msg("用户名或密码错误！");
                }
            });
            return false
        });
    });
</script>
</body>
</html>