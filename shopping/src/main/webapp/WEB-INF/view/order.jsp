<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/carts.css">
<!--     <link rel="stylesheet" href="../css/bootstrap.min.css"> -->
  
  <link rel="stylesheet" href="../index/css/index.css">
      <!-- 核心 css -->
    <link rel="stylesheet" href="../bootstrap/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap-table/src/bootstrap-table.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap-editable/bootstrap-editable.css">
</head>
<body>


  <div class="header-nav">
      <div class="nav-wrap auto-width clearfix">
        <a href="../gohead" class="nav-item ">首页</a>
        <a href="../goorder" class="nav-item nav-cur ">订单</a>
        <a href="../gogou" class="nav-item ">购物车</a>
        <a href="../goUserInfo" class="nav-item nav-item_hover">个人中心</a>
        <a href="#" class="nav-rank">
          <i class="iconfont icon-rank"></i>
          全站排行榜
        </a>
      </div>
    </div>
    <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_chk">
                    <!--所有商品全选-->
                    <input type="checkbox" id="all" class="whole_check">
                    <label for="all"></label>
                    全选
                </li>
                <li class="list_con">商品信息</li>
                <li class="list_info">商品参数</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>
	     <c:forEach items="${list}" var="list">

 <div class="order_content">
                	<ul class="order_lists">
                    <li class="list_chk" >
                        <input type="checkbox" id="checkbox_2" class="son_check"  style="display:none">
                        <label for="checkbox_2" style="display:none"></label>
                    </li>
                     <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="../images/${list.file} " alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">${list.shopname}</a></div>
                    </li>
                    <li class="list_info">
                        <p>商品名：${list.shopid} </p>
                      
                    </li>
                    <li class="list_price">
                        <p class="price">店铺名${list.businessname}</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="${list.num} " class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥${list.price}</p>
                    </li>
					<li class="list_op">
					
		                        <p class="del"><a href="../order/delorder?id=${list.id}" class="delBtn">删除订单</a></p>            
		      		</li>
                </ul>         
            </div>
	
        

            
		</c:forEach>
        
        <!--底部-->
    </section>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="./js/carts.js"></script>
    <!-- 核心 js -->
<!-- 	<script src="third/jquery/jquery-3.3.1.min.js"></script> -->
	<script src="../bootstrap/bootstrap/bootstrap.min.js"></script>
	<script src="../bootstrap/bootstrap-table/src/bootstrap-table.js"></script>
	<script src="../bootstrap/bootstrap-table/src/extensions/export/bootstrap-table-export.js"></script>
	<script src="../bootstrap/bootstrap-table/src/extensions/editable/bootstrap-table-editable.js"></script>
<script type="text/javascript" language="JavaScript">
    //初始化表格，不要缺少
    $('#o').bootstrapTable();
</script>
</body>
</html>