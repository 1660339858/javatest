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
<style type="text/css">
	.layui-table-cell{
     height:100px;
     line-height: 50px;
 }
</style>
</head>
<body>
<!-- 表单搜素 -->
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">商品名</label>
			<div class="layui-input-inline" style="width: 100px;">
				<input type="text" name="name" id="tName" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<input type="button" class="layui-btn" id="souBtn" value="搜索" />
	</div>



	<!-- 表格容器 -->
	<table id="demo" lay-filter="test"></table>


	<!-- 表格的头部工具条 -->
	<script type="text/html" id="barDemo1">
  		<a class="layui-btn layui-btn" lay-event="add">添加</a>
	</script>

	<!-- 表格的行内工具条 -->
	<script type="text/html" id="barDemo2">	
  		<a class="layui-btn layui-btn-xs" lay-event="detail">查看与编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>



	<!-- 添加的弹窗 -->
	<div id="tianjiachuang" style="display: none">
		<form class="layui-form" onsubmit="return false" id="tianjiaForm"
			lay-filter="tianjiaForm">
			
			<div class="layui-upload">
			  <button type="button" class="layui-btn" id="test1">上传图片</button>
			  <div class="layui-upload-list">
			    <img class="layui-upload-img" id="demo1">
			    <p id="demoText"></p>
			    <input type="hidden" name="file" id="goodsimg" value="../images/shuiguo.jpg">
<!-- 			     <input type="hidden" name="file" id="goods" value="../images/goods/shuiguo.jpg"> -->
			  </div>
			</div>   
			<div class="layui-form-item">
				<label class="layui-form-label">商品名称</label>
				<div class="layui-input-inline">
					<input type="text" name="name" placeholder="请输入"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">价格</label>
				<div class="layui-input-inline">
					<input type="text" name="price" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">产地</label>
				<div class="layui-input-inline">
					<input type="text" name="place" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">数量</label>
				<div class="layui-input-inline">
					<input type="text" name="num" placeholder="请输入" autocomplete="off"
						class="layui-input">
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
			<div class="layui-upload">
			  <button type="button" class="layui-btn" id="test2">上传图片</button>
			  <div class="layui-upload-list">
			    <img class="layui-upload-img" id="demo2">
			    <p id="demoText"></p>
			    <input type="hidden" name="file1" id="goodsimg1" value="../images/defaultgoodsimg.png">
			  </div>
			</div>  
			
			<div class="layui-form-item">
				<label class="layui-form-label">商品名称</label>
				<div class="layui-input-inline">
					<input type="text" name="name" placeholder="请输入"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">价格</label>
				<div class="layui-input-inline">
					<input type="text" name="price" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">产地</label>
				<div class="layui-input-inline">
					<input type="text" name="place" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">原始数量</label>
				<div class="layui-input-inline">
					<input type="text" name="num1" id="num1" placeholder="请输入" autocomplete="off" disabled="disabled"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">增加数量</label>
				<div class="layui-input-inline">
					<input type="text" name="num2" id="num2" placeholder="请输入" 
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="xiugaibtn">修改提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
			
			<!--  修改的表单中，需要放一个 隐藏域，用来储存id-->
			<input type="hidden" name="shopid"/>
			
		</form>
	</div>



	<!-- 脚本代码部分 -->
	<script>
		layui.use([ 'form', 'layer', 'table','upload' ], function() {
			var form = layui.form;
			var table = layui.table;
			var layer = layui.layer;
			var upload=layui.upload;
			var $ = layui.$;

			//渲染表格
			table.render({
				elem : '#demo', //指定原始表格元素选择器（推荐id选择器）
				page : true,//开启分页
				url : '../business/findAllShop',
				toolbar : '#barDemo1',
				cols : [ [ //标题栏
				{
					checkbox : true
				}, {
					field : 'shopid',
					title : 'ID',
					width : 80
				}, {
					field : 'businessname',
					title : '商家',
					width : 120
				}, {
					field : 'name',
					title : '名称',
					width : 120
				}, {
					field : 'price',
					title : '价格',
					width : 120
				}, {
					field : 'place',
					title : '产地',
					width : 120
				}, {
					field : 'num',
					title : '数量',
					width : 120
				},{
					field:'file', 
					title:'图片',
					align:'center',
					width:'200', 
					templet:function(d){
                    return '<img width="100px" height="100px" src=/layui/images/goods/'+d.file+ ' />';
                }},{
                	width:'300',
					toolbar : '#barDemo2',
					title : '操作'
				} ] ]
			});
			//渲染表格--end

			//搜索按钮的单击事件
			$("#souBtn").click(function() {
				
				
				//表格重载
				table.reload('demo', {
					where : {
						name : $("#tName").val()
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

		 	//普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test1'
		    ,url: '/file/uploadFile' //改成您自己的上传接口
		    ,acceptMime:'image/*'
			,field:'mf'
			,method : "post"
		    ,done: function(res, index, upload){
		      //预读本地文件示例，不支持ie8
		      var path=res.path;
		       $('#demo1').attr('src', '/file/showImageByPath?path='+path);
		       $("#goodsimg").val(path);//给隐藏域赋值
		    }
		    ,error: function(){
		      //演示失败状态，并实现重传
		      var demoText = $('#demoText');
		      demoText.html('<span style="color: #FF5722;">上传失败 仅支持jpg格式</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
		      demoText.find('.demo-reload').on('click', function(){
		        uploadInst.upload();
		      });
		    }
		  }); 
			
			
		  var uploadInst1 = upload.render({
			    elem: '#test2'
			    ,url: '/file/uploadFile' //改成您自己的上传接口
			    ,acceptMime:'image/*'
				,field:'mf'
				,method : "post"
			    ,done: function(res, index, upload){
			      //预读本地文件示例，不支持ie8
			      var path=res.path;
			       $('#demo2').attr('src', '/file/showImageByPath?path='+path);
			       $("#goodsimg1").val(path);//给隐藏域赋值
			    }
			    ,error: function(){
			      //演示失败状态，并实现重传
			      var demoText = $('#demoText');
			      demoText.html('<span style="color: #FF5722;">上传失败 仅支持jpg格式</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
			      demoText.find('.demo-reload').on('click', function(){
			        uploadInst1.upload();
			      });
			    }
			  }); 
			
/*  			 //文件上传
			upload.render({
				elem: '.test1',
				url: '/file/uploadFile',
				acceptMime:'image/*',
				field:'mf',
				method : "post",  //此处是为了演示之用，实际使用中请将此删除，默认用post方式提交
				done: function(res, index, upload){
					var path=res.path;
					$('.thumbImg').attr('src','/file/showImageByPath?path='+path);
					$('.thumbBox').css("background","#fff");
					$("#goodsimg").val(path);//给隐藏域赋值
				}
			}); */

			
			//监听行内工具条
			table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				var data = obj.data; //获得当前行数据
				var layEvent = obj.event; //获得 lay-event 对应的值
				var tr = obj.tr; //获得当前行 tr 的DOM对象

				if (layEvent === 'detail') { //查看
					console.log(data)
					//数据展示在表单中
					form.val('xiugaiForm',data);
					$('#demo2').attr('src', '/file/showImageByPath?path='+data.file);
					 $("#goodsimg1").val(data.file);//给隐藏域赋值
					$('#num1').attr('value', data.num);
					$('#num2').attr('value', 0);
					//弹窗
					layer.open({
						type : 1,
						area : [ '800px', '600px' ],
						content : $('#xiugaichuang')
					});
					
				} else if (layEvent === 'del') { //删除
					layer.confirm('真的删除此商品么', function(index) {
						obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
						layer.close(index);
						//向服务端发送删除指令
						var url = "../business/deleteShop";
						$.post(url, {
							shopid : data.shopid
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
				var url = "../business/addShop";
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
				var url = "../business/updateShop";
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