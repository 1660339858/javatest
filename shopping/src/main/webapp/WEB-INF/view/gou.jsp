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
  
  <link rel="stylesheet" href="../index/css/index.css">
</head>
<body>


  <div class="header-nav">
      <div class="nav-wrap auto-width clearfix">
        <a href="../gohead" class="nav-item ">首页</a>
        <a href="../goorder" class="nav-item ">订单</a>
        <a href="../gogou" class="nav-item nav-cur">购物车</a>
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


   <div></div>
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
	<c:forEach items="${list1}" var="list1">

  <div class="cartBox">
            <div class="shop_info">
                <div class="all_check" style="display:none">
                    <!--店铺全选-->
                    <input type="checkbox" id="shop_a" class="shopChoice">
                    <label for="shop_a" class="shop" ></label>
                </div>
                <div class="shop_name">
                    店铺：<a href="javascript:;"> ${list1.businessname}</a>
                </div>
            </div>
            
            <c:forEach items="${list}" var="list">
            <c:choose>
   <c:when test="${list1.businessid==list.businessid}"> 
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
                        <p>产地：${list.place} </p>
                      
                    </li>
                    <li class="list_price">
                        <p class="price">￥${list.price}</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="${list.shopnum} " class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥${list.shopnum * list.price}</p>
                    </li>
                    <li class="list_op">
                         <a href="javascript:mydel(${list.shopcartid})">删除</a>
                        <p class="del"><a href="../shopcart/delshopcart?shopcartid=${list.shopcartid}" class="delBtn">移除商品</a></p>
                        <p class="del"><a href="../order/addorder?businessid=${list.businessid}&shopid=${list.shopid}&price=${list.price}&shopnum=${list.shopnum}&shopcartid=${list.shopcartid}" class="delBtn">结算商品</a></p>
<!--                         <input type="submit" name="Submit" value="删除" style="width:80" οnclick="javascript:delcfm()"   class="sub"> -->
<!--                         <input type="submit" name="Submit" value="结算" style="width:80" οnclick="javascript:delcfm()"  class="sub"> -->
                    </li>

                </ul>
               
            </div>
   </c:when>
</c:choose>
            </c:forEach>
        </div>

		</c:forEach>
       
        
        <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:;">结算</a></div>
            </div>
        </div>
    </section>
<!--     <section class="model_bg"></section> -->
<!--     <section class="my_model"> -->
<!--         <p class="title">删除宝贝<span class="closeModel">X</span></p> -->
<!--         <p>您确认要删除该宝贝吗？</p> -->
<!--         <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div> -->
<!--     </section> -->


    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="./js/carts.js"></script>
<script language="javascript">
function  mydel(id) {
   if(confirm("你确定要删除吗?")){
        $.ajax({
            url:"../shopcart/delshopcart?shopcartid="+id,
            type:"POST",
            data:{"_method":"POST"},
            dataType:"json",
            success:function (data) {
            	console.log(date);
               window.location.href=data.obj;
            }
        });
   }
//    $('.dialog-sure').click(function () {
//        $order_lists.remove();
//        if($order_content.html().trim() == null || $order_content.html().trim().length == 0){
//            $order_content.parents('.cartBox').remove();
//        }
//        closeM();
//        $sonCheckBox = $('.son_check');
//        totalMoney();
//    })
}

    function delcfm() {
    	alert(00001);
        if (confirm("确认要删除？")) {
        	window.event.returnValue = true}else{
            window.event.returnValue = false;
        }
    }
</script>
</body>
</html>