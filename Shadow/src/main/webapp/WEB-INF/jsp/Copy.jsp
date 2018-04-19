<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>期刊</title>
<!-- JS -->
<script type="text/javascript" src="../static/shadow_JS/jquery.min.js"></script>
<script type="text/javascript" src='../static/shadow_JS/title_style.js'></script>
<script src="../static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="../static/shadow_JS/TweenMax.min.js"></script>
<script src="../static/shadow_JS/jquery.pager.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="../static/bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="../static/shadow_css/indexcss/title_style.css">
<link rel="stylesheet" href="../static/shadow_css/percss/leftdiv.css">
<link rel="stylesheet" href="../static/shadow_css/tail.css">
<link rel="stylesheet" href="../static/shadow_css/Pager.css">
<link rel="stylesheet" href="../static/awesome/font-awesome-4.7.0/css/font-awesome.min.css">

</head>
<body>
	<div class="nav">
    <div style="float: left;margin-left: 80px;margin-top: 9px;width: 140px;"><a href="per/per_details"><img alt="觅影" src="../static/shadow_img/logo.jpg"></a></div>
		<div class="nav_li">
			<ul>
				<li><a href="user/sha_index"><h5>期刊</h5></a></li>
				<li><a href=""><h5>单曲</h5></a></li> 
				<li><a href=""><h5>留言</h5></a></li>
                <li><a href=""><h5>活动</h5></a></li>
                <li><a href=""><h5>觅影</h5></a></li>
			</ul>
		</div>
	</div>
	<!-- Search start 搜索框-->
	<div class="row" style="width: 500px; float:right;margin-top: -37px;position: relative;margin-right:180px;z-index:3;" >
	  <div class="col-lg-6" >
	  	<div class="input-group" >
	      <input type="text" class="form-control" placeholder="寻觅..." style="height: 28px;background: rgb(245,245,245);">
	      <span class="input-group-btn">
	        <button class="btn btn-default" type="button" style="height: 28px;background: rgb(245,245,245);">
	        <span class="glyphicon glyphicon-search" style="color: rgb(200, 200, 200); font-size: 14px;"></span>
	        </button>
	      </span>
	    </div>
	  </div>
	</div>
	<!-- Search end -->
	
	<!-- 返回顶部 -->
	<!--  <div id="top" style="position:fixed;cursor:pointer;right:20px;bottom:120px;width:60px;height: 54px;background-image: url('static/shadow_img/gotop.jpg'); border: 0px;"></div> -->
    <!-- 返回顶部关闭 -->
    
    <!-- 内容区 -->
	
	<!-- 内容区 -->
	
	<!--尾部-->	
	<div id="tail">
		<!-- 名言  -->
			<div style="width: auto;height:40px;margin: 20px auto;margin-left: 30px;">
				<p id="myp">测试数据测试数据测试数据</p><br><br>
			</div>
			
			<div id="myinfo_1">
				<div style="width:290px;margin: -10px auto;" id="m_1">
					<a href="" id="myinfo_text1">关于觅影</a> | 
					<a href="" id="myinfo_text1">加入我们</a> | 
					<a href="" id="myinfo_text1">联系合作</a> | 
					<a href="" id="myinfo_text1">反馈建议</a> | 
					<a href="" id="myinfo_text1">友情链接</a> 
				</div>
			</div>
			
			<div id="myinfo_2">
				<p>© 2018 觅影<img src="../static/shadow_img/tail.jpg"></p>
			</div>
	</div>
	<script type="text/javascript">
		//右侧顶部固定
		$(function(){
			//获取要定位元素距离浏览器顶部的距离
			var navH = $("#rightper").offset().top;
			//滚动条事件
			$(window).scroll(function(){
			//获取滚动条的滑动距离
			var scroH = $(this).scrollTop();
			//滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
			if(scroH>=navH){
			$("#rightper").css({"position":"fixed","top":0});
			$("#rightper").css({"margin-left":"850px"});
			}else if(scroH<navH){
			$("#rightper").css({"position":"static"});
			$("#rightper").css({"margin-left":"50px"});
			}
			})
			})
        //返回顶部
        /* top.onclick = function(){
            document.body.scrollTop = document.documentElement.scrollTop = 0;
        } 
         $("#top").css("display","none"); 
        onscroll = function ()
        {
            var st = document.documentElement.scrollTop || document.body.scrollTop;
            if (!top.offsetWidth && st >= 200)
            {
                $("#top").css("display","block");
            }
            else if (!top.offsetWidth && st < 300)
            {
            	 $("#top").css("display","none"); 
            }
        } */
		</script>
</body>
</html>