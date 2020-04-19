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
</head>
<body>
<!-- 表单搜素 -->
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">状态</label>
			<div class="layui-input-inline" style="width: 500px;">
				<select name="orderstatus" id="pId">
					<option value="">请选择</option>
					<option value="1">未付款</option>
					<option value="2">已支付</option>
				</select>
			</div>
		</div>
		<input type="button" class="layui-btn" id="souBtn" value="搜索" />
	</div>



	<!-- 表格容器 -->
	<table id="demo" lay-filter="test"></table>

	<script type="text/html" id="barDemo2">
  		<a class="layui-btn layui-btn-xs" lay-event="detail">查看与编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>

	<!-- 脚本代码部分 -->
	<script>
		layui.use([ 'form', 'layer', 'table' ], function() {
			var form = layui.form;
			var table = layui.table;
			var layer = layui.layer;
			var $ = layui.$;

			//渲染表格
			table.render({
				elem : '#demo', //指定原始表格元素选择器（推荐id选择器）
				page : true,//开启分页
				url : '../order/findAllOrder',
				cols : [ [ //标题栏
				{
					checkbox : true
				}, {
					field : 'id',
					title : 'ID',
					width : 80
				}, {
					field : 'userid',
					title : '用户编号',
					width : 120
				}, {
					field : 'username',
					title : '用户名',
					width : 120
				}, {
					field : 'shopid',
					title : '商品编号',
					width : 120
				}, {
					field : 'shopname',
					title : '商品名称',
					width : 120
				}, {
					field : 'orderstatus',
					title : '状态',
					width : 120
				}, {
					field : 'price',
					title : '价格',
					width : 120
				}, {
					field : 'num',
					title : '数量',
					width : 120
				},{
					field:'createtime', 
					title: '创建时间',
					width:'250',
					templet:function (d) {
                    return showTime(d.createtime);
                }}] ]
			});
			//渲染表格--end

			//时间转换函数
			function showTime(tempDate)
			{
				var d = new Date(tempDate);
				var year = d.getFullYear();
				var month = d.getMonth();
				month++;
				var day = d.getDate();
				var hours = d.getHours();
	
				var minutes = d.getMinutes();
				var seconds = d.getSeconds();
				month = month<10 ? "0"+month:month;
				day = day<10 ? "0"+day:day;
				hours = hours<10 ? "0"+hours:hours;
				minutes = minutes<10 ? "0"+minutes:minutes;
				seconds = seconds<10 ? "0"+seconds:seconds;
	
	
				var time = year+"-"+month+"-"+day;
				return time;
			}
			
			//搜索按钮的单击事件
			$("#souBtn").click(function() {
				
				
				//表格重载
				table.reload('demo', {
					where : {
						orderstatus : $("#pId").val()
					}
				});
			});
			//搜索按钮的单击事件-end

		});
	</script>




</body>
</html>