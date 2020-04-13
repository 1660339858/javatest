$(function () {

	$("#souBtn").click(function () {
        alert("Hello");
   });
	
  // 搜索框反馈
  $(".search-text").focus(function () {
    $(".search-feedback").show();
  }).blur(function () {
    $(".search-feedback").hide();
  });

  // 顶部右侧 hover
  $(".guide-item").hover(function () {
    $(this).addClass("hover");
  }, function () {
    $(this).removeClass("hover");
  });

  // 焦点图跟随鼠标的文字
  var bg = $(".header-banner").find(".bg");
  var text = $(".header-banner").find(".text");
  var disX = 0;
  var disY = 0;

  bg.hover(function (ev) {
    disX = ev.clientX;
    disY = ev.clientY;

    text.css({left: ev.clientX, top: ev.clientY});

    text.show();

    $(document).mousemove(function (ev) {
      var offset_left = ev.clientX + 20;
      var offset_top = ev.clientY - bg.offset().top - text.height() / 2 + 4;

      text.css({left: offset_left, top: offset_top});
    });
  }, function () {
    text.hide();
  });

  // 导航hover
  var $nav_item = $(".header-nav").find(".nav-item_hover");
  var $subNav = $(".header-nav").find(".subNav");
  var $subNav_item = $subNav.find(".subNav-item");
  var cur_index = 0;
  var timer = null;


  $nav_item.hover(function () {
    cur_index = $(this).index() - 2;

    $subNav_item.hide();

    operate(cur_index);

    // 二级导航偏移值
    var nowNav_left = $nav_item.eq(cur_index).offset().left;
    var newLeft = nowNav_left - $subNav_item.eq(cur_index).width() / 2 + (parseInt($nav_item.css("margin-right")) / 2);

    if (cur_index !== 0) {
      $subNav_item.eq(cur_index).css({left: newLeft});
    }
  }, setTime);

  $subNav.hover(function () {
    operate(cur_index);
  }, setTime);

  function setTime() {
    timer = setTimeout(function () {
      $subNav.hide();
    }, 800);
  };

  function operate(cur_index) {
    clearTimeout(timer);

    $subNav.show();
    $subNav_item.eq(cur_index).show();
  };


  // 焦点图效果
  var slider = new Slider({
    width: 452,
    height: 260,
    method: "leftRight",
    ifAutoPlay: false
  });

  // 顶部及导航定位
  var header_nav = $(".header-nav");

  $(window).scroll(function () {
    if ($(this).scrollTop() >= 184) {
      header_nav.addClass("header-nav__fixed");
    } else {
      header_nav.removeClass("header-nav__fixed");
    }
  });

  // Tab
  Tab.int($("[JS-tab]"));

  // 返回顶部
  $(window).scroll(function (ev) {
    if ($("hmtl, body").scrollTop() >= $(this).height()) {
      $("#back_top").fadeIn();      
    } else {
      $("#back_top").fadeOut();
    }

    console.log($(this).height);
  });

  $("#back_top").click(function () {
    $("hmtl, body").animate({scrollTop: 0});
  });

  

});