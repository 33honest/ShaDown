<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<!-- JS -->
	<script src="static/shadow_JS/jquery.min.js"></script>
	<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src='static/shadow_JS/title_style.js'></script>
<!-- CSS -->
	<link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" href="static/shadow_css/indexcss/title_style.css">
</head>
<body>
	<div class="nav">
    <div style="float: left;margin-left: 80px;margin-top: 9px;width: 140px;"><img alt="觅影" src="../static/shadow_img/logo.jpg"></div>
		<div class="nav_li">
			<ul>
				<li><a href="<%= basePath %>pers/per_ind"><h5>期刊</h5></a></li>
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
</body>
</html>