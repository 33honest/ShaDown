<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${param.tag == 1}">
			<!-- JS -->
			<script src="static/shadow_JS/jquery.min.js"></script>
			<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
			<script type="text/javascript" src='static/shadow_JS/title_style.js'></script>
			<script type="text/javascript" src='static/shadow_JS/banner.js'></script>
			<script src="static/shadow_JS/TweenMax.min.js"></script>
			<script src="static/shadow_JS/shieid.js"></script>
			<!-- CSS -->
			<link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.css">
			<link rel="stylesheet" href="static/shadow_css/indexcss/title_style.css">
			<link rel="stylesheet" href="static/shadow_css/indexcss/periodical.css">
			<link rel="stylesheet" href="static/shadow_css/indexcss/img_style.css">
			<link rel="stylesheet" href="static/shadow_css/indexcss/banner.css">
			<link rel="stylesheet" href="static/shadow_css/indexcss/single.css">
			<link rel="stylesheet" href="static/shadow_css/indexcss/activity.css">
			<link rel="stylesheet" href="static/shadow_css/tail.css">
			<link rel="stylesheet" href="static/awesome/font-awesome-4.7.0/css/font-awesome.min.css">
	</c:if>
	
	<c:if test="${param.tag == 2}">
			<!-- JS -->
			<script type="text/javascript" src="../static/shadow_JS/jquery.min.js"></script>
			<script type="text/javascript" src='../static/shadow_JS/title_style.js'></script>
			<script src="../static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
			<script src="../static/shadow_JS/TweenMax.min.js"></script>
			<script src="../static/shadow_JS/jquery.pager.js"></script>
			<script src="../static/shadow_JS/shieid.js"></script>
			<!-- CSS -->
			<link rel="stylesheet" href="../static/bootstrap-3.3.7-dist/css/bootstrap.css">
			<link rel="stylesheet" href="../static/shadow_css/indexcss/title_style.css">
			<link rel="stylesheet" href="../static/shadow_css/percss/leftdiv.css">
			<link rel="stylesheet" href="../static/shadow_css/tail.css">
			<link rel="stylesheet" href="../static/shadow_css/Pager.css">
			<link rel="stylesheet" href="../static/awesome/font-awesome-4.7.0/css/font-awesome.min.css">
	</c:if>
	
	<c:if test="${param.tag == 3}">
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
			<link rel="stylesheet" href="../static/shadow_css/perdetails/perdetails.css">
	</c:if>
			
</body>
</html>