<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link href="../layui/css/layui.css" rel="stylesheet" type="text/css" />
<script src="../layui/layui.js"></script>
<style type="text/css">
	.layui-table-cell{
     height:100px;
     line-height: 50px;
	 }
	 .viewShop{
	 	float: left;
	 	margin:0 50px 50px 50px;
	 	border:1px solid #eee;
	 }
	 
	 .img{
	 text-align: center;
	 }
	 .price{
	 	padding-left:10px;
	 	color:#f40;
	 	font-size: 16px;
	 }
	 .name{
	 	width:100px;
	 	padding-left:10px;
	 	color:black;
	 }
	 .place{
	 	padding-left:10px;
	 	color:#BC8F8F;
	 	font-size: 13px;
	 }
	 .hrefa{
	 	height:200px;
	 	width:100px;
	 	color:#FFF;
	 	border-color: #F40;
		background: #F40;
		margin-left: 230px;
	 }
	 .top{
		height: 900px;
	 }
	 .down{
	 	text-align: center;
	 }
	 #demo6{
	 	
	 	text-align: center;
	 }
</style>
</head>
<body>
<!-- 表单搜素 -->
	<div class="layui-form-item">
		<form action="../business/findAllShop1" method="post">
			<div class="layui-inline">
				<label class="layui-form-label">商品名</label>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" name="name" id="tName" autocomplete="off"
						class="layui-input" value="${name}">
						<input type="hidden" name="count" value="${pageinfo.count}">
				</div>
			</div>
			<input type="submit" class="layui-btn" id="souBtn" value="搜索" />
		</form>
	</div>

<div class="down">
		<a href="../business/findAllShop1?page=${pageinfo.page-1}&limit=8&count=${pageinfo.count}&name=${name}">上一页</a>
		<a href="../business/findAllShop1?page=${pageinfo.page+1}&limit=8&count=${pageinfo.count}&name=${name}">下一页</a>
	</div>

	<div class="top">
		<c:forEach items="${s}" var="s">
			<div class="viewShop">
				<img class="img" width="300px" height="300px" src="../file/showImageByPath?path=${s.file}"/><br>
				<strong class="price">¥${s.price}</strong><br>
				<span class="name">${s.name}</span><br>
				<span class="place">${s.place}</span><br>
				<a href="../order/addOrder?shopid=${s.shopid}&businessid=${businessid}" title="加入购物车" class="hrefa" shortcut-key="a" shortcut-label="加入购物车" shortcut-effect="click" data-spm-click="gostr=/tbdetail;locaid=d2">
	                		加入购物车
	            </a>
			</div>
		</c:forEach>
		 
		
	</div><br>
	

</body>

<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  var $ = layui.$;
  
  //只显示上一页、下一页
  laypage.render({
    elem: 'demo6'
    ,count: 50
    ,layout: ['prev', 'next']
    ,jump: function(obj, first){
      if(!first){
    	  $.post("../business/findAllShop1",{"page":obj.curr,"limit":8},function(res){
    		  
    	  },"json")
        layer.msg('第 '+ obj.curr +' 页');
      }
    }
  });
  
});
</script>
</html>