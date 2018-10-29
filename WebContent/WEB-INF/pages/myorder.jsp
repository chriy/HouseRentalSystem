<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body>
    <div class="layui-fluid" style="margin-top: 40px;">
        <fieldset class="layui-elem-field layui-field-title">
            <legend style="font-size: 26px">我的租房信息</legend>
        </fieldset>
        <table id="houseList" lay-filter="order"></table>
    </div>
<script src="layui/layui.js"></script>
<script>
    layui.use(['element','form','table','util'],function () {
        var element = layui.element,
            $ = layui.jquery,
            table = layui.table,
            util = layui.util;

        var dt = table.render({
           elem:"#houseList",
           url:"/HouseRentalSystem/myOrderInfo",
           page:true,
           limit:10,
           loading:true,
           cols:[[
               {field: 'oID', title: '序号', align: 'center'}
               ,{field: 'houseDesc', title: '房屋详情', align: 'center'}
               ,{field: 'houseModel', title: '几室几厅', align: 'center'}
               ,{field: 'houseArea', title: '面积', align: 'center'}
               ,{field: 'houseFloor', title: '楼层', align: 'center'}
               ,{field: 'houseType', title: '出租方式', align: 'center'}
               ,{field: 'housePrice', title: '价格', align: 'center'}
               ,{field: 'houseAddress', title: '地址', align: 'center'}
               ,{field: 'houseLinkMan', title: '联系人', align: 'center'}
               ,{field: 'communityName', title: '小区名', align: 'center'}
               ,{field: 'houseOriented', title: '朝向', align: 'center'}
               ,{field: 'orderTime', title: '订单时间', align: 'center',
            	   templet:function(d){return util.toDateString(d.orderTime)}}
               ,{field: 'orderUser', title: '订单人', align: 'center' }
               ,{title: '操作', align: 'center',toolbar:"#tools"}
            ]],
        });
        
        table.on('tool(order)',function(obj){
            var data = obj.data;
            var layEvent = obj.event;
            var tr = obj.tr;
            var currPage = dt.config.page.curr;
            
            if(layEvent === 'delete'){
            	console.log(data.oID)
                layer.confirm('确认删除当前数据吗？',{icon:5,shade:0.1},function(index){
                    $.post("deleteOrder",{oID:data.oID},function(success){
                    	if(success == "OK"){
                    		obj.del();
                    		dt.reload({
                    			page:{curr:1}
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
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="delete">删除</a>
</script>
</body>
</html>