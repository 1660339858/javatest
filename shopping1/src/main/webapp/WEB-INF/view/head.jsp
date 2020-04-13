<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>

  <link rel="stylesheet" href="../index/css/reset.css">
  <link rel="stylesheet" href="../index/css/index.css">
  <link rel="stylesheet" href="../index/font/iconfont.css">
  
<link href="../layui/css/layui.css" rel="stylesheet" type="text/css" />
<script src="../layui/layui.js"></script>
</head>
<body style=" height: 2000px; ">

  <!---------- 顶部页面 ---------->
  <div id="header">

    <!-- 最顶部 -->
    <div class="header-top">
      <div class="auto-width">
        <h1 class="logo fl"><a href="../index/#"><img  href="../index/imagesimages/logo.png" alt="#"></a></h1>
        <div class="search-box fl">
          <form action="#">
            <input type="text" class="fl search-text" placeholder="Search here...">
            <button class="fl search-btn">
              <i class="iconfont icon-search"></i>
            </button>
          </form>
          <div class="search-feedback">
            <span class="search-hot">今日热搜</span>
            <div class="search-menu">
              <a href="#" class="item item-cur">
                <span>1</span>
                <em>OverWatch</em>
              </a>
              <a href="#" class="item item-cur">
                <span>2</span>
                <em>电影知道答案</em>
              </a>
             
            </div>
          </div>
        </div>
       
      </div>
    </div>

    <!-- 焦点图 -->
    <div class="header-banner">
      <a href="#" class="bg"></a>
      <span class="text">这辆车……到底能不能上啊！！！</span>
      <a href="#" class="link"></a>
    </div>
    <!-- 导航 -->
    <div class="header-nav">
      <div class="nav-wrap auto-width clearfix">
        <a href="#" class="nav-item nav-cur">首页</a>
        <a href="../goOrder" class="nav-item">订单</a>
        <a href="../gogou	" class="nav-item">购物车</a>
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

  </div>

  <!---------- 主体内容 ---------->
  <div id="main">
    <div class="auto-width clearfix">
      
      <!-- 幻灯片部分 -->
      <section class="area clearfix area-slider">
       
        <ul class="slider-menu fl">
        
         <c:forEach items="${s}" var="s">
         <li class="slider-menu__item">
            <a href="info" class="item">
             <img class="img"  src="../layui/images/goods/${s.file}"/><br>
              <div class="mask-gradient">
                <p><strong class="price">¥${s.price}</strong><br>
				<span class="name">${s.name}</span><br>
				<span class="place">${s.place}</span><br></p>
                <div class="text-box">
<!--                   <em>UP: AcFun出品</em> -->
                  <span class="info">
<!--                     <i class="iconfont icon-collect">14.9万</i> -->
<!--                     <i class="iconfont icon-collect">165</i> -->
                  </span>
                </div>
              </div>
            </a>
            <a href="../shopcart/addShopcart?shopid=${s.shopid}&businessid=${s.businessid}&shopname=${s.name}&shopnum=${s.num}" title="加入购物车" class="hrefa" shortcut-key="a" shortcut-label="加入购物车" shortcut-effect="click" data-spm-click="gostr=/tbdetail;locaid=d2">
	                		加入购物车   shopid ${s.shopid}    businessid${s.businessid}
	         </a>
          </li>
         
    
         
         
		</c:forEach>

        
        </ul>
      </section>

      
      
		

      <!-- 音乐 -->
      <section class="area clearfix area-game">
        <div class="area-cont">
          <div class="area-main fl">
            <header class="area-header">
              <h2 class="title">
                <img  href="../index/images/area-title__8.gif" alt="#">
                <b>音乐</b>
                <em>大力喂蕉不要停</em>
              </h2>
              <a href="#" class="change">
                <i class="iconfont icon-rank"></i>
                换一批
              </a>
              <p class="link fr">
                <a href="#">经典红白机游戏的神还原</a>
                <span>/</span>
                <a href="#">极品飞车系列全回顾</a>
              </p>
              <a href="#" class="more">More ></a>
            </header>
            <ul class="area-menu clearfix">
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
            </ul>
          </div>
          <div class="area-side fr" JS-tab="true">
            <header class="area-header">
              <h2 class="title">
                <b>音乐排行榜</b>
              </h2>
              <div class="tab-rank tab fr">
                <a href="javascript:;" class="tab-rank__item active">日榜</a>
                <a href="javascript:;" class="tab-rank__item">周榜</a>
              </div>
            </header>
            <div class="side-rank">
              <ul class="tab-cont tab-cont__active">
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img1.jpg" alt="#">
                    <span class="rank">1</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img1.jpg" alt="#">
                    <span class="rank">2</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img last">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img1.jpg" alt="#">
                    <span class="rank">3</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">4</span>
                    微小而确实的幸福
                  </a>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">5</span>
                    微小而确实的幸福
                  </a>
                </li>
              </ul>
              <ul class="tab-cont">
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img2.jpg" alt="#">
                    <span class="rank">1</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img2.jpg" alt="#">
                    <span class="rank">2</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img last">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img2.jpg" alt="#">
                    <span class="rank">3</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">4</span>
                    微小而确实的幸福
                  </a>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">5</span>
                    微小而确实的幸福
                  </a>
                </li>
              </ul>
            </div>
            <a href="#" class="more">查看完整榜单 ></a>
          </div>
        </div>	
      </section>

      <!-- 舞蹈 -->
      <section class="area clearfix area-game">
        <div class="area-cont">
          <div class="area-main fl">
            <header class="area-header">
              <h2 class="title">
                <img  href="../index/images/area-title__9.gif" alt="#">
                <b>舞蹈</b>
                <em>大力喂蕉不要停</em>
              </h2>
              <a href="#" class="change">
                <i class="iconfont icon-rank"></i>
                换一批
              </a>
              <p class="link fr">
                <a href="#">经典红白机游戏的神还原</a>
                <span>/</span>
                <a href="#">极品飞车系列全回顾</a>
              </p>
              <a href="#" class="more">More ></a>
            </header>
            <ul class="area-menu clearfix">
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
              <li class="area-menu__item">
                <a href="#" class="img">
                  <img  href="../index/images/cont/area-menu__1.jpg" alt="#">
                  <span class="mask">
                    <em class="time">4:47</em>
                  </span>
                  <span class="icon-recommend">推荐</span>
                </a>
                <div class="info">
                  <a href="#" class="change-title">抢来的感情究竟能不能感到幸福？!</a>
                  <span class="play-info clearfix">
                    <i class="iconfont icon-play fl">2372</i>
                    <i class="iconfont icon-collect fr">999</i>
                  </span>
                </div>
              </li>
            </ul>
          </div>
          <div class="area-side fr" JS-tab="true">
            <header class="area-header">
              <h2 class="title">
                <b>舞蹈排行榜</b>
              </h2>
              <div class="tab-rank tab fr">
                <a href="javascript:;" class="tab-rank__item active">日榜</a>
                <a href="javascript:;" class="tab-rank__item">周榜</a>
              </div>
            </header>
            <div class="side-rank">
              <ul class="tab-cont tab-cont__active">
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img1.jpg" alt="#">
                    <span class="rank">1</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img1.jpg" alt="#">
                    <span class="rank">2</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img last">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img1.jpg" alt="#">
                    <span class="rank">3</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">4</span>
                    微小而确实的幸福
                  </a>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">5</span>
                    微小而确实的幸福
                  </a>
                </li>
              </ul>
              <ul class="tab-cont">
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img2.jpg" alt="#">
                    <span class="rank">1</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img2.jpg" alt="#">
                    <span class="rank">2</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li class="has-img last">
                  <a href="#" class="img fl">
                    <img  href="../index/images/cont/side-img2.jpg" alt="#">
                    <span class="rank">3</span>
                  </a>
                  <div class="info fr">
                    <a href="#" class="text-overflow">2016年11月第3周碉堡傻缺视频合辑</a>
                    <p><a href="#">UP: 关注撸主三十年</a></p>
                    <p>
                      <i class="iconfont icon-play fl">9898</i>
                      <i class="iconfont icon-collect fr">9898</i>
                    </p>
                  </div>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">4</span>
                    微小而确实的幸福
                  </a>
                </li>
                <li>                  
                  <a href="#" class="rank-item text-overflow">
                    <span class="rank-num">5</span>
                    微小而确实的幸福
                  </a>
                </li>
              </ul>
            </div>
            <a href="#" class="more">查看完整榜单 ></a>
          </div>
        </div>
      </section>

      <!-- 广告 -->
      <div class="area clearfix area-ad">
        <a href="#" class="fl"><img  href="../index/images/cont/ad2.png" alt="#"></a>
        <a href="#" class="fr"><img  href="../index/images/cont/ad3.png" alt="#"></a>
      </div>

    </div>
  </div>

  <!---------- 底部内容 ---------->
  <div id="footer">
    <div class="container auto-width">
      <div class="footer-top clearfix">
        <div class="footer-nav fl">
          <div class="item">
            <h4>合作</h4>
            <p>
              <a href="#">关于我们</a>
              <a href="#">联系我们</a>
              <br>
              <a href="#">AC招聘</a>
            </p>
          </div>
          <span class="line"></span>
          <div class="item">
            <h4>官方</h4>
            <p>
              <a href="#">新浪微博</a>
              <a href="#">官方网店</a>
              <br>
              <a href="#">微信公众号<img  href="../index/images/footer-arcode.jpg" class="footer-orcode" alt="#"></a>
            </p>
          </div>
          <span class="line"></span>
          <div class="item">
            <h4>下载</h4>
            <p>
              <a href="#" class="mg-0">移动客户端</a>
              <span class="new">new</span>
              <br>
              <a href="#">AC娘表情包</a>
            </p>
          </div>
          <span class="line"></span>
          <div class="item">
            <h4>友情链接</h4>
            <p>
              <a href="#">斗鱼直播</a>
              <a href="#">匿名版</a>
              <br>
              <a href="#">AC大逃杀</a>
            </p>
          </div>
          <span class="line"></span>
          <div class="item">
            <h4>反馈</h4>
            <p>
              <a href="#">意见反馈</a>
              <a href="#">举报</a>
              <a href="#">帮助中心</a>
              <br>
              <a href="#">免责声明</a>
              <a href="#">用户协议</a>
            </p>
          </div>
        </div>
        <div class="footer-img fr">
          <img  href="../index/images/footer-logo.gif" alt="#">
        </div>
      </div>
      <div class="footer-middle clearfix">
        <div class="item">
          <a href="#"><i class="icon icon-1"></i>中国互联网举报中心</a>
          <a href="#"><i class="icon icon-2"></i>网络文化经营单位</a>
        </div>
        <div class="item">
          <span>京8888888888号</span>
        </div>
        <div class="item">
          <span>节目制作经营许可证66666666666号</span>

        </div>
      </div>
      <div class="footer-bottom">
        <img  href="../index/images/logo-gray.png" alt="#">
        <p>本站不提供任何视听上传服务，所有内容均来自视频分享站点所提供的公开引用资源。********</p>
      </div>
    </div>
  </div>

  <a href="javascript:;" id="back_top" class="iconfont icon-up"></a>

  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script  href="../index/js/script.js"></script>
  <script  href="../index/js/sliderbox.js"></script>
  <script  href="../index/js/tab.js"></script>

<script>


//          $.ajax({
//              type: "post",
//              url: "../business/findAllShop1",
//              data: {"page":0,"limit":8},
//              dataType: "json",
//              success: function(data){
//                          $('#resText').empty();   
//                          var html = ''; 
//                          $.each(data, function(commentIndex, comment){


                        	 
                        	 
                        	 
                        	 
//                          });
//                          $('#resText').html(html);
//                       }
//          });
   


// layui.use(['laypage', 'layer'], function(){
//   var laypage = layui.laypage
//   ,layer = layui.layer;
//   var $ = layui.$;
  
//   //只显示上一页、下一页
//   laypage.render({
//     elem: 'demo6'
//     ,count: 50
//     ,layout: ['prev', 'next']
//     ,jump: function(obj, first){
//       if(!first){
//     	  $.post("../business/findAllShop1",{"page":obj.curr,"limit":8},function(res){
    		  
//     	  },"json")
//         layer.msg('第 '+ obj.curr +' 页');
//       }
//     }
//   });
  
// });
</script>
</body>
</html>