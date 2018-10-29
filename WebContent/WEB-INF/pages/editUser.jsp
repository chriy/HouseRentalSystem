<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改用户信息</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body>
<div class="wapper" style="width: 500px;margin-top: 40px">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">修改用户信息</legend>
    </fieldset>
    <form class="layui-form" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="hidden" value="${User.uID }" name="uID"/>
                <input type="text" name="uName" value="${User.uName }" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密&emsp;码</label>
            <div class="layui-input-inline">
                <input type="text" name="uPassword" required lay-verify="required"
                       autocomplete="off"
                       class="layui-input" value="${User.uPassword }" lay-verify="pass">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">电&emsp;话</label>
            <div class="layui-input-inline">
                <input type="text" name="uPhoneNumber" lay-verify="required"
                       autocomplete="off"
                       class="layui-input"
                       value="${User.uPhoneNumber }">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">昵&emsp;称</label>
            <div class="layui-input-inline">
                <input type="text" name="uNickName" lay-verify="required"
                       autocomplete="off"
                       class="layui-input" 
                       value="${User.uNickName }">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="edit">提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script src="layui/layui.js"></script>
<script>
    layui.use(['element', 'form','layer'], function () {
        var element = layui.element,
            form = layui.form,
            $ = layui.jquery,
            layer = layui.layer;
        
        form.on("submit(edit)",function(data){
        	$.post("editUser",data.field,function(result){
        		if(result=="OK"){
        			layer.msg("修改成功！",{time:1500,end:function(){window.history.back(-1);}})
        		}else{
        			layer.msg("修改失败,请重试");
        		}
        	});
        	return false;
        })
    });
</script>    
</body>
</html>