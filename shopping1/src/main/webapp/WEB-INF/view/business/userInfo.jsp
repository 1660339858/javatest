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
</head>
<body>
<!-- 查询表单 -->
	<form class="layui-form" action="">
	
		<div class="layui-upload">
			  <button type="button" class="layui-btn" id="test1">上传图片</button>
			  <div class="layui-upload-list">
			    <img class="layui-upload-img" id="demo1" src="/file/showImageByPath?path=${business.file}">
			    <p id="demoText"></p>
				 <input type="hidden" name="file" id="goodsimg" value="${business.file}">
			  </div>
			</div>  
	
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="name" id="name" required lay-verify="required"
					value="${business.name}"placeholder="请输入姓名" autocomplete="off" class="layui-input">
						<input type="hidden" name="businessid" value="${business.businessid}">
						
			</div>
		</div>
		<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
				<div class="layui-input-inline">
					<input type="text" name="username" id="username" required lay-verify="required"
					value="${business.username}" placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-form-item">
				<label class="layui-form-label">密码</label>
				<div class="layui-input-inline">
					<input type="text" name="password" id="password" required lay-verify="required"
					value="${business.password}" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
			</div>
		<div class="layui-form-item">
			<label class="layui-form-label">电话</label>
			<div class="layui-input-inline">
				<input type="text" name="phone" id="phone" required lay-verify="required"
				value="${business.phone}" placeholder="请输入电话" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
				<label class="layui-form-label">地址</label>
				<div class="layui-input-inline">
					<input type="text" name="address" id="address" required lay-verify="required"
					value="${business.address}" placeholder="请输入地址" autocomplete="off" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">开启商店</label>
				<div class="layui-input-inline">
					<input type="radio" name=avaliable id="type" value="1" title="是" <c:if test="${business.avaliable == 1}">checked</c:if> />
					<input type="radio" name="avaliable" id="type" value="2" title="否" <c:if test="${business.avaliable == 2}">checked</c:if> />
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
		layui.use([ 'form', 'layer', 'table','upload' ], function() {
			var upload=layui.upload;
			var form = layui.form;
			var table = layui.table;
			var layer = layui.layer;
			var $ = layui.$;
			
			var uploadInst = upload.render({
			    elem: '#test1'
			    ,url: '/file/uploadFile' //改成您自己的上传接口
			    ,acceptMime:'image/*'
				,field:'mf'
				,method : "post"
			    ,done: function(res, index, upload){
			      //预读本地文件示例，不支持ie8
			      var path=res.path;
			       $('#demo1').attr('src', '/layui/images/shuiguo.jpg');
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
			
			//监听提交
			form.on('submit(formDemo)', function(data) {
				 $.post('../business/updateBusiness',data.field,function(res){
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