<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改房源信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body>
<div class="wrapper" style="width: 900px;margin-top: 40px">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">修改我发布的房源信息</legend>
    </fieldset>
    <form id="updateHouse" class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">房源标题</label>
            <div class="layui-input-block">
            	<input type="hidden" value="${House.hID}" name="hID">
                <textarea name="houseDesc" placeholder="请输入内容" class="layui-textarea" required lay-verify="required" >${House.houseDesc }</textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">房屋类型</label>
            <div class="layui-input-block">
                <input type="text" name="houseModel" required lay-verify="required" placeholder="几室几厅"
                       autocomplete="off" value="${House.houseModel }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">房屋面积</label>
            <div class="layui-input-block">
                <input type="text" name="houseArea" required lay-verify="required" placeholder=""
                       autocomplete="off" value="${House.houseArea }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">房屋楼层</label>
            <div class="layui-input-block">
                <input type="text" name="houseFloor" required lay-verify="required" placeholder="高层/低层/几楼"
                       autocomplete="off" value="${House.houseFloor }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">出租方式</label>
            <div class="layui-input-block">
                <select name="houseType" lay-verify="required">
                    <option value=""></option>
                    <option value="整租"<c:if test="${House.houseType == '整租'}"> selected</c:if>>整租</option>
                    <option value="合租"<c:if test="${House.houseType == '合租'}"> selected</c:if>>合租</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">地&emsp;&emsp;址</label>
            <div class="layui-input-block">
                <input type="text" name="houseAddress" required lay-verify="required" placeholder=""
                       autocomplete="off" value="${House.houseAddress }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">小区名字</label>
            <div class="layui-input-block">
                <input type="text" name="communityName" required lay-verify="required" placeholder=""
                       autocomplete="off" value="${House.communityName }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">租房价格</label>
            <div class="layui-input-block">
                <input type="text" name="housePrice" required lay-verify="required|number" placeholder=""
                       autocomplete="off" value="${House.housePrice }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">联系电话</label>
            <div class="layui-input-block">
                <input type="text" name="houseLinkMan" required lay-verify="required|phone" placeholder=""
                       autocomplete="off" value="${House.houseLinkMan }" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">房屋朝向</label>
            <div class="layui-input-block">
                <select name="houseOriented" lay-verify="required">
                    <option value=""></option>
                    <option value="南北"<c:if test="${House.houseOriented == '南北'}"> selected</c:if>>南北</option>
                    <option value="东西"<c:if test="${House.houseOriented == '东西'}"> selected</c:if>>东西</option>
                </select>
            </div>
        </div>
        
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="updateHouse" id="updateHouse-btn">立即修改</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script>
    layui.use(['element','form','layer'],function () {
        var element = layui.element,
            form = layui.form ,
            layer = layui.layer,
            $ = layui.jquery;
        
        form.on("submit(updateHouse)",function(){
        	$.post("updateHouse",$("#updateHouse").serialize(),function(res){
               $("#updateHouse")[0].reset();
        		if(res=="OK"){
        			 layer.msg("修改成功！",{time:1000,end:function(){window.history.back(-1);}});
        		}
        	})
        	return false;
        })
    });
</script>
</body>
</html>
