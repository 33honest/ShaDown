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


</head>
<body>
	<jsp:include page="pj.jsp"  flush="true" >   
  		 <jsp:param name="tag" value="3" />
	</jsp:include>
	<!-- 头部 -->
	<jsp:include page="top.jsp" flush="true"/>
	<div id="p_details">
	
	
	</div>
	
	<!-- 底部 -->
	<jsp:include page="tail.jsp" flush="true"/>
</body>
</html>