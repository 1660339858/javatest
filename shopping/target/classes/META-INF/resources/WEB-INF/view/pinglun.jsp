<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>评论插件</title>
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">

<style>
.container {
	width: 1000px;
}

.commentbox {
	width: 900px;
	margin: 20px auto;
}

.mytextarea {
	width: 100%;
	overflow: auto;
	word-break: break-all;
	height: 100px;
	color: #000;
	font-size: 1em;
	resize: none;
}

.comment-list {
	width: 900px;
	margin: 20px auto;
	clear: both;
	padding-top: 20px;
}

.comment-list .comment-info {
	position: relative;
	margin-bottom: 20px;
	margin-bottom: 20px;
	border-bottom: 1px solid #ccc;
}

.comment-list .comment-info header {
	width: 10%;
	position: absolute;
}

.comment-list .comment-info header img {
	width: 100%;
	border-radius: 50%;
	padding: 5px;
}

.comment-list .comment-info .comment-right {
	padding: 5px 0px 5px 11%;
}

.comment-list .comment-info .comment-right h3 {
	margin: 5px 0px;
}

.comment-list .comment-info .comment-right .comment-content-header {
	height: 25px;
}

.comment-list .comment-info .comment-right .comment-content-header span,
	.comment-list .comment-info .comment-right .comment-content-footer span
	{
	padding-right: 2em;
	color: #aaa;
}

.comment-list .comment-info .comment-right .comment-content-header span,
	.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,
	.send, .reply-list-btn {
	cursor: pointer;
}

.comment-list .comment-info .comment-right .reply-list {
	border-left: 3px solid #ccc;
	padding-left: 7px;
}

.comment-list .comment-info .comment-right .reply-list .reply {
	border-bottom: 1px dashed #ccc;
}

.comment-list .comment-info .comment-right .reply-list .reply div span {
	padding-left: 10px;
}

.comment-list .comment-info .comment-right .reply-list .reply p span {
	padding-right: 2em;
	color: #aaa;
}
</style>

<link rel="stylesheet" href="../css/shouye.css">
<script src="../js/jquery.js"></script>
<script src="../js/modernizr-custom-v2.7.1.min.js"></script>
<script>
	$(document).ready(function() {
		var $miaobian = $('.Xcontent08>div');
		var $huantu = $('.Xcontent06>img');
		var $miaobian1 = $('.Xcontent26>div');
		$miaobian.mousemove(function() {
			miaobian(this);
		});
		$miaobian1.click(function() {
			miaobian1(this);
		});
		function miaobian(thisMb) {
			for (var i = 0; i < $miaobian.length; i++) {
				$miaobian[i].style.borderColor = '#dedede';
			}
			thisMb.style.borderColor = '#cd2426';

			$huantu[0].src = thisMb.children[0].src;
		}
		function miaobian1(thisMb1) {
			for (var i = 0; i < $miaobian1.length; i++) {
				$miaobian1[i].style.borderColor = '#dedede';
			}
			//		thisMb.style.borderColor = '#cd2426';
			$miaobian.css('border-color', '#dedede');
			thisMb1.style.borderColor = '#cd2426';
			$huantu[0].src = thisMb1.children[0].src;
		}
		$(".Xcontent33").click(function() {
			var value = parseInt($('.input').val()) + 1;
			$('.input').val(value);
		})

		$(".Xcontent32").click(function() {
			var num = $(".input").val()
			if (num > 0) {
				$(".input").val(num - 1);
			}

		})

	})
</script>
</head>
<body>

	<div class="container">


		<div class="Xcontent">
			<ul class="Xcontent01">

				<div class="Xcontent06">
					<img src="../layui/images/goods/${shop.file}">
				</div>

				<ol class="Xcontent13">
					<div class="Xcontent14">
						<a href="#"><p>${shop.name }</p></a>
					</div>
					<div class="Xcontent15">
						<img src="images/shangpinxiangqing/X11.png">
					</div>
					<div class="Xcontent16">
						<p>充电5分钟，温暖2小时</p>
					</div>
					<div class="Xcontent17">
						<p class="Xcontent18">售价</p>
						<p class="Xcontent19">
							￥<span>${shop.price }</span>
						</p>
						<div class="Xcontent20">
							<p class="Xcontent21">促销</p>
							<img src="images/shangpinxiangqing/X12.png">
							<p class="Xcontent22">领610元新年礼券，满再赠好礼</p>
						</div>
						<div class="Xcontent23">
							<p class="Xcontent24">服务</p>
							<p class="Xcontent25">30天无忧退货&nbsp;&nbsp;&nbsp;&nbsp;
								48小时快速退款 &nbsp;&nbsp;&nbsp;&nbsp; 满88元免邮</p>
						</div>

					</div>
					<div class="Xcontent26">
						<p class="Xcontent27">颜色</p>
						<div class="Xcontent28">
							<img src="images/shangpinxiangqing/X14.png">
						</div>
						<div class="Xcontent29">
							<img src="images/shangpinxiangqing/X1.png">
						</div>
					</div>
					<div class="Xcontent30">
						<p class="Xcontent31">数量</p>
						<div class="Xcontent32">
							<img src="images/shangpinxiangqing/X15.png">
						</div>
						<form>
							<input class="input" value="1">
						</form>
						<div class="Xcontent33">
							<img src="images/shangpinxiangqing/16.png">
						</div>

					</div>
					<div class="Xcontent34">
						<a href="#"><img src="images/shangpinxiangqing/X17.png"></a>
					</div>
					<div class="Xcontent35">
						<a href="#"><img src="images/shangpinxiangqing/X18.png"></a>
					</div>

				</ol>



			</ul>

		</div>

		<form action="../talk/addTalk?shopid=${shop.shopid}&businessid=${shop.businessid}" method="post">
		<div class="commentbox">
			<textarea cols="80" rows="50" placeholder="来说几句吧......" name="content"
				class="mytextarea" id="content"></textarea>
			<button type="submit" class="btn btn-info pull-right" id="comment">评论</div>
		</div>
		</form>
		<div class="comment-list">
		<c:forEach items="${talks}" var="talk">
			<div class="comment-info">
				<header>
					<img src="../layui/images/goods/shuiguo.jpg">
				</header>
				<div class="comment-right">
					<h3>${talk.username}</h3>
					<div class="comment-content-header">
						<span><i class="glyphicon glyphicon-time"></i>2017-10-17
							11:42:53</span><span><i class="glyphicon glyphicon-map-marker"></i>深圳</span>
					</div>
					<p class="content">${talk.content}</p>
					<div class="comment-content-footer">
						<div class="row">
							<div class="col-md-10">
								<span><i class="glyphicon glyphicon-globe"></i> 谷歌</span>
							</div>
							<div class="col-md-2">
								<span class="reply-btn">回复</span>
							</div>
						</div>
					</div>
					<div class="reply-list"></div>
				</div>
			</div>
		</c:forEach>
			
		</div>
	</div>
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="./js/jquery.comment.js"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script>
		// 	//初始化数据
		// 	var arr = [
		// 		{id:1,img:"../layui/images/goods/shuiguo.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[]},
		// 		{id:2,img:"../layui/images/goods/shuiguo.jpg",replyName:"匿名",beReplyName:"",content:"到菜市场买菜，看到一个孩子在看摊，我问：“一只鸡多少钱？” 那孩子回答：“23。” 我又问：“两只鸡多少钱？” 孩子愣了一下，一时间没算过来，急中生智大吼一声：“一次只能买一只！”",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[{id:3,img:"",replyName:"帅大叔",beReplyName:"匿名",content:"来啊，我们一起吃鸡",time:"2017-10-17 11:42:53",address:"",osname:"",browse:"谷歌"}]},
		// 		{id:3,img:"../layui/images/goods/shuiguo.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"win10",browse:"谷歌",replyBody:[]}
		// 	];
		// 	$(function(){
		// 		$(".comment-list").addCommentList({data:arr,add:""});
		// 		$("#comment").click(function(){
		// 			var obj = new Object();
		// 			obj.img="./images/img.jpg";
		// 			obj.replyName="匿名";
		// 			obj.content=$("#content").val();
		// 			obj.browse="深圳";
		// 			obj.osname="win10";
		// 			obj.replyBody="";
		// 			$(".comment-list").addCommentList({data:[],add:obj});
		// 		});
		// 	})
	</script>
</body>
</html>