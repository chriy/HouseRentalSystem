<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查看所有用户</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body>
<div class="layui-fluid" style="margin-top: 40px;">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">所有注册用户</legend>
    </fieldset>
    <table id="allUser" lay-filter="user"></table>
</div>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script>
    layui.use(['element', 'table'], function () {
        let element = layui.element,
            $ = layui.jquery,
            table = layui.table;

        /*渲染数据*/
        let dt = table.render({
            elem: "#allUser",
            url: "${pageContext.request.contextPath}/admin/allUser",
            page: true,
            cols: [[
                {field: 'userId', title: 'UID', align: 'center'},
                {field: 'userName', title: '用户名', align: 'center'},
                {field: 'userPassword', title: '密码', align: 'center'},
                {field: 'userPhoneNumber', title: '联系电话', align: 'center'},
                {field: 'userNickName', title: '昵称', align: 'center'},
                {title: '操作', align: 'center', toolbar: "#tools"}
            ]]
        });

        /*编辑*/
        table.on('tool(user)', function (obj) {
            let data = obj.data;
            let layEvent = obj.event;
            let tr = obj.tr;
            let currPage = dt.config.page.curr;

            if (layEvent === "edit") {
                window.location.href = "/admin/editUser.html?userId=" + data.userId;
            }
            if (layEvent === 'delete') {
                layer.confirm('确认删除当前数据吗？', {icon: 5, shade: 0.1}, function (index) {
                    $.post("${pageContext.request.contextPath}/admin/deleteUser", {userId: data.userId}, function (success) {
                        if (success === "OK") {
                            obj.del();
                            dt.reload({
                                page: {curr: 1}
                            });
                            layer.msg("删除成功");
                        }
                    })
                });
            }
        });
    });
</script>
<script type="text/html" id="tools">
    <a class="layui-btn layui-btn-sm" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">删除</a>
</script>
</body>
</html>