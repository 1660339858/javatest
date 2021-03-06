<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link href="layui/css/layui.css" rel="stylesheet" type="text/css" />
<script src="layui/layui.js"></script>
<script src="jquery-1.8.2.js"></script>
<link rel="stylesheet" href="../index/css/index.css">
</head>
<body>


  <div class="header-nav">
      <div class="nav-wrap auto-width clearfix">
        <a href="../gohead" class="nav-item ">首页</a>
        <a href="../goOrder" class="nav-item ">订单</a>
        <a href="../gogou" class="nav-item ">购物车</a>
        <a href="../goUserInfo" class="nav-item nav-item_hover nav-cur">个人中心</a>
        <a href="#" class="nav-rank">
          <i class="iconfont icon-rank"></i>
          全站排行榜
        </a>
      </div>
      <div class="subNav">
        <ul class="auto-width">
          <li class="subNav-item">
            <a href="#">动画短片</a>
            <a href="#">动画资讯</a>
            <a href="#">旧番补档</a>
            <a href="#">新番连载</a>
            <a href="#">MAD·AMV</a>
            <a href="#">MMD·3D</a>
            <a href="#">2.5次元</a>
            <a href="#">国产动画</a>
          </li>
        </ul>
      </div>
    </div>
<!-- 查询表单 -->
	<form class="layui-form" action="">
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="name" id="name" required lay-verify="required"
					value="${user.name}"placeholder="请输入姓名" autocomplete="off" class="layui-input">
						<input type="hidden" name="userid" value="${user.userid}">
			</div>
		</div>
		<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
				<div class="layui-input-inline">
					<input type="text" name="username" id="username" required lay-verify="required"
					value="${user.username}" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-form-item">
				<label class="layui-form-label">密码</label>
				<div class="layui-input-inline">
					<input type="text" name="password" id="password" required lay-verify="required"
					value="${user.password}" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-form-item">
			<label class="layui-form-label">电话</label>
			<div class="layui-input-inline">
				<input type="text" name="phone" id="phone" required lay-verify="required"
				value="${user.phone}" placeholder="请输入电话" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
				<label class="layui-form-label">地址</label>
				<div class="layui-input-inline">
					<input type="text" name="address" id="address" required lay-verify="required"
					value="${user.address}" placeholder="请输入地址" autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="cha()">修改</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
 
	<script>
		//Demo
		layui.use([ 'form', 'layer', 'table' ], function() {
			var form = layui.form;
			var table = layui.table;
			var layer = layui.layer;
			var $ = layui.$;
			
			//监听提交
			form.on('submit(formDemo)', function(data) {
				 $.post('../user/updateUser',data.field,function(res){
		                if(res.code==200){
		                    window.parent.location.reload();
		                }
		                layer.msg(res.msg);
		                layer.close(mainIndex);
		            })
		            return false;
				
			});
		});
	</script>
	
</body>
</html>