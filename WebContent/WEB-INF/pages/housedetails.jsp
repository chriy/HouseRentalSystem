<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="css/details.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_848666_pri5cwk3xde.css"/>
</head>
<body>
<header>
    <div class="layui-header title">
        <div class="layui-container">
            <div class="layui-pull-left">
            	<a href="toIndexPage" target="_blank">
	                <img src="img/logo.png" width="240px">
            	</a>
            </div>
            <c:if test="${not empty loginUser }">
	            <div class="personalCenter layui-pull-right"><a href="toUserSystem" target="_blank" style="color:#fff"><i class="layui-icon layui-icon-tree"></i> 个人中心</a></div>
            </c:if>
            <c:if test="${empty loginUser }">
	            <div class="operation layui-pull-right"><i class="layui-icon layui-icon-tree"></i> 登录 - 注册</div>
            </c:if>
        </div>
    </div>
    <div class="details-head">
        <!-- title -->
        <div class="title-wrapper">
            <div class="left-con">
                <h2 class="house-title">${Details.houseDesc}</h2>
                <p class="tags">
                    <span>户型方正，采光好，格局好。</span>
                </p>
            </div>
        </div>
    </div>
</header>

<section class="layui-container wrapper">
    <p class="breadcrumb">
        <span class="layui-breadcrumb" lay-separator=">">
          <a href="toIndexPage">首页</a>
          <a href="">房屋详情</a>
        </span>
    </p>
    <div class="carousel-image layui-pull-left layui-col-md7">
        <div class="layui-carousel" id="details-image">
            <div carousel-item style="float: left;">
            	<c:forEach items="${DetailsImg }" var="d">
	                <div style="background: url('${d}')no-repeat center/cover"></div>
            	</c:forEach>
            </div>
        </div>
    </div>
    <div class="details-info layui-pull-right layui-col-md5 ">
        <div class="show-price">
            <span class="sale-price">${Details.housePrice }</span>
            <span class="sale-unit">元/月</span>
            <span class="area">${Details.houseType } 押一付三</span>
        </div>
        <hr>
        <div class="show-house-name">
            <p><span class="field">小区名称：</span><span class="name">${Details.communityName }</span></p>
            <p><span class="field">小区地址：</span><span class="name">${Details.houseAddress }</span></p>
            <p><span class="field">周边学校：</span><span class="name">请联系经纪人</span></p>
            <p><span class="field">联系电话：</span><span class="name">${Details.houseLinkMan }</span></p>
        </div>
        <hr>
        <div class="house-model">
            <ul>
                <li>
                    <p>${Details.houseModel }</p>
                    <span>规模</span>
                </li>
                <li>
                    <p>${Details.houseArea }平米</p>
                    <span>建筑面积</span>
                </li>
                <li>
                    <p>${Details.houseOriented}</p>
                    <span>朝向</span>
                </li>
            </ul>
        </div>
        <hr>
        <div class="order-btn-container">
        	<input type="hidden" class="HID" value="${Details.hID}">
        	<input type="hidden" class="uName" value="${loginUser.uName}">
            <button class="order-btn">现在预定</button>
        </div>
    </div>
    <div class="anchor-title">
        <h3>房屋配置</h3>
    </div>
    <div class="household-appliances">
        <ul>
            <li>
                <i class="iconfont icon-chuang"></i>
                <span>床</span>
            </li>
            <li>
                <i class="iconfont icon-kongtiao"></i>
                <span>空调</span>
            </li>
            <li>
                <i class="iconfont icon-yigui"></i>
                <span>衣柜</span>
            </li>
            <li>
                <i class="iconfont icon-iconyihuifu-"></i>
                <span>桌椅</span>
            </li>
            <li>
                <i class="iconfont icon-xiyiji"></i>
                <span>洗衣机</span>
            </li>
            <li>
                <i class="iconfont icon-shafa"></i>
                <span>沙发</span>
            </li>
            <li>
                <i class="iconfont icon-xiaodugui"></i>
                <span>消毒柜</span>
            </li>
            <li>
                <i class="iconfont icon-weibolu"></i>
                <span>微波炉</span>
            </li>
            <li>
                <i class="iconfont icon-chouyouyanji"></i>
                <span>抽油烟机</span>
            </li>
            <li>
                <i class="iconfont icon-dianshi"></i>
                <span>电视</span>
            </li>
            <li>
                <i class="iconfont icon-meiqitianranqi"></i>
                <span>天然气</span>
            </li>
            <li>
                <i class="iconfont icon-kuandai"></i>
                <span>宽带</span>
            </li>
            <li>
                <i class="iconfont icon-reshuiqianzhuang"></i>
                <span>热水器</span>
            </li>
            <li>
                <i class="iconfont icon-bingxiang"></i>
                <span>冰箱</span>
            </li>
        </ul>
    </div>
</section>

<footer>
    <p>018年 毕业设计</p>
</footer>
<div class="layui-container">
    <div class="layui-tab layui-tab-brief" id="sign" lay-filter="" style="display: none;">
        <ul class="layui-tab-title">
            <li class="layui-this">登录</li>
            <li>注册</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <div class="" style="margin: 40px 20px;">
                    <form class="layui-form layui-form-pane" id="login">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <br>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="password" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <br>
                        <div class="layui-form-item">
                            <button class="layui-btn layui-btn-fluid layui-btn-normal layui-btn-radius" lay-submit lay-filter="login">立即登录</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="" style="margin: 30px 20px;">
                    <form class="layui-form layui-form-pane form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="uName" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="text" name="uPassword" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">手机号</label>
                            <div class="layui-input-block">
                                <input type="text" name="uPhoneNumber" required  lay-verify="required" placeholder="注册后不能修改" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">昵称</label>
                            <div class="layui-input-block">
                                <input type="text" name="uNickName" required  lay-verify="required" placeholder="注册后不能修改" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                    </form>
                    <div class="layui-form-item">
                        <input type="submit" class="layui-btn layui-btn-fluid layui-btn-radius layui-btn-normal regist-btn" value="立即注册" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script>
    layui.use(['element', 'carousel', 'layer','form'], function () {
        var element = layui.element,
            carousel = layui.carousel,
            $ = layui.jquery,
            layer = layui.layer,
            form = layui.form;
        
		var layer_index;
        carousel.render({
            elem: "#details-image",
            width: "100%",
            height: "400px",
            anim: "default"
        });

        $('.operation').click(function () {
            layer_index = layer.open({
                type: 1,
                content: $('#sign'),
                area: ['360px', '460px'],
                title: "房屋租赁",
                closeBtn: 2
            });
        });
        $('.regist-btn').click(function () {
        	if($("input[name='uName']").val()!=""&&$("input[name='uPassword']").val()!=""&&$("input[name='uPhoneNumber']").val()!=""&&$("input[name='uNickName']").val()!=""){
	            $.post("regist",$('.form').serialize(),function (res) {
	            	console.log(res)
	                if(res=='OK'){
	                	layer.close(layer_index);
	                    layer.alert("注册成功",{icon:1,time:2000});
	                    $('.form')[0].reset();
	                }else{
	                    layer.msg("注册失败,用户名以存在");
	                }
	            })
        	}else{
        		layer.msg("请填写所有表单");
        	}
        });
        $(".order-btn").click(function(){
        	if($(".uName").val()==""){
        		layer.alert("您还没登录，请先登录再操作",{icon:5});
        		return;
        	}
        	$.post("addOrder",{id:$(".HID").val()},function(data){
        		if(data=="OK"){
    				layer.alert("恭喜你，预定成功！",{icon:1});
    				$(".order-btn").addClass("layui-btn-disabled");
    				$(".order-btn").html("你已成功预定");
    				$(".order-btn").off("click");
    			}
        	});
        });
        form.on("submit(login)",function(){
     	   $.post("login",$('#login').serialize(),function (res) {
     	   		if(res=="OK"){
     	   			window.location.reload();
     	   		}else{
     	   			layer.msg("用户名或者密码错误");
     	   		}
     	   });
     	  return false; 
        });
    });
</script>
</body>
</html>
