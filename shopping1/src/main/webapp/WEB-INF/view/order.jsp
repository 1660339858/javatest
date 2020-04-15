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
<link rel="stylesheet" href="../index/css/index.css">
</head>
<body>


  <div class="header-nav">
      <div class="nav-wrap auto-width clearfix">
        <a href="../gohead" class="nav-item ">首页</a>
        <a href="../goOrder" class="nav-item  nav-cur">订单</a>
        <a href="../gogou" class="nav-item">购物车</a>
        <a href="../goUserInfo" class="nav-item nav-item_hover">个人中心</a>
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

<!-- 表单搜素 -->
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">商品名</label>
			<div class="layui-input-inline" style="width: 100px;">
				<input type="text" name="name" id="tName" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">价格</label>
			<div class="layui-input-inline" style="width: 100px;">	
				<input type="text" name="cardNO" id="cardNo" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">数量</label>
			<div class="layui-input-inline" style="width: 100px;">
			<select name="sectionID" id="sectionId">
				<option value="0">请选择</option>
					<c:forEach items="${s}" var="s">
						<option value="${s.id}">${s.name}</option>
					</c:forEach>
					</select>
			</div>
		</div>

		<input type="button" class="layui-btn" id="souBtn" value="搜索" />
		<a type="button" class="layui-btn" id="souBtn" href="../gohead" >返回首页</a>
	</div>



	<!-- 表格容器 -->
	<table id="demo" lay-filter="test"></table>


	<!-- 表格的头部工具条 -->
	<script type="text/html" id="barDemo1">
  		<a class="layui-btn layui-btn" lay-event="add">添加</a>
	</script>

	<!-- 表格的行内工具条 -->
	<script type="text/html" id="barDemo2">
  		
	</script>



	<!-- 添加的弹窗 -->
	<div id="tianjiachuang" style="display: none">
		<form class="layui-form" onsubmit="return false" id="tianjiaForm"
			lay-filter="tianjiaForm">
			<div class="layui-form-item">
				<label class="layui-form-label">卡号</label>
				<div class="layui-input-inline">
					<input type="text" name="cardNO" placeholder="请输入"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="name" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="男" title="男"> <input
						type="radio" name="sex" value="女" title="女" checked>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">科室</label>
				<div class="layui-input-inline">
					<select name="sectionID" id="sectionId">
					<c:forEach items="${s}" var="s">
						<option value="${s.id}">${s.name}</option>
					</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="tianjiabtn">添加</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>

	<!-- 修改的弹窗 -->
	<div id="xiugaichuang" style="display: none">
		<form class="layui-form" onsubmit="return false" id="xiugaiForm"
			lay-filter="xiugaiForm">
			<div class="layui-form-item">
				<label class="layui-form-label">卡号</label>
				<div class="layui-input-inline">
					<input type="text" name="cardNO" placeholder="请输入"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="name" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="男" title="男"> <input
						type="radio" name="sex" value="女" title="女" checked>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">科室号</label>
				<div class="layui-input-inline">
					<select name="sectionID" id="sectionId">
					<c:forEach items="${s}" var="s">
						<option value="${s.id}">${s.name}</option>
					</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="xiugaibtn">修改提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
			<!--  修改的表单中，需要放一个 隐藏域，用来储存id-->
			<input type="hidden" name="id"/>
			
		</form>
	</div>



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
				url : 'getTeachersList',
				toolbar : '#barDemo1',
				cols : [ [ //标题栏
				{
					checkbox : true
				}, {
					field : 'id',
					title : 'ID',
					width : 80
				}, {
					field : 'cardNO',
					title : '商品id',
					width : 120
				}, {
					field : 'name',
					title : '商品名称',
					width : 120
				}, {
					field : 'sex',
					title : '价格',
					width : 120
				}, {
					field : 'sectionID',
// 					title : '产地',
// 					width : 120
// 				}, {
// 					field : 'status',
// 					title : '状态',
// 					width : 120
// 				}, {
// 					field : 'sectionName',
// 					title : '科室',
// 					width : 120
// 				}, {
// 					toolbar : '#barDemo2',
// 					title : '操作'
// 				} 
] ]
			});
			//渲染表格--end

			//搜索按钮的单击事件
			$("#souBtn").click(function() {
				
				
				//表格重载
				table.reload('demo', {
					where : {
						name : $("#tName").val(),
						cardNO : $("#cardNo").val() == 0?0:$("#cardNo").val(),
						sectionID : $("#sectionId").val()
					}
				});
			});
			//搜索按钮的单击事件-end

			//监听头部工具条
			table.on('toolbar(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				var layEvent = obj.event; //获得 lay-event 对应的值
				if (layEvent === 'add') { //添加
					//弹窗
					layer.open({
						type : 1,
						area : [ '800px', '600px' ],
						content : $('#tianjiachuang')
					});
				}
			});
			//监听头部工具条--end

			//监听行内工具条
			table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				var data = obj.data; //获得当前行数据
				var layEvent = obj.event; //获得 lay-event 对应的值
				var tr = obj.tr; //获得当前行 tr 的DOM对象

				if (layEvent === 'detail') { //查看
					console.log(data)
					//数据展示在表单中
					form.val('xiugaiForm',data);
					//弹窗
					layer.open({
						type : 1,
						area : [ '800px', '600px' ],
						content : $('#xiugaichuang')
					});
					
				} else if (layEvent === 'del') { //删除
					layer.confirm('真的删除行么', function(index) {
						obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
						layer.close(index);
						//向服务端发送删除指令
						var url = "delTeachers";
						$.post(url, {
							id : data.id
						}, function(res) {
							layer.alert("删除成功")(res.msg, function() {
								layer.closeAll(); //关闭所有的窗口
								table.reload('demo', {}); //表格重载
							});
						}, "json");
					});
				} 
			});
			//监听行内工具条---end

			//添加提交的 监听
			form.on('submit(tianjiabtn)', function(data) {
				//表单序列化获取表单中所有的数据
				var data = $("#tianjiaForm").serialize();
				var url = "addTeachers";
				$.post(url, data, function(res) {
					layer.alert(res.msg, function() {
						layer.closeAll(); //关闭所有的窗口
						table.reload('demo', {}); //表格重载
					});
				}, "json");
				return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
			});
			//修改提交的监听
			form.on('submit(xiugaibtn)', function(data) {
				var url = "uptTeachers";
				$.post(url,data.field,function(res){
					layer.alert(res.msg,function(){
						layer.closeAll(); //关闭所有的窗口
						table.reload('demo', {}); //表格重载
					});
				},"json");
				
				return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
			});
			//修改提交的监听--end

		});
	</script>







</body>
</html>