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
  		 <jsp:param name="tag" value="2" />
	</jsp:include>
	<jsp:include page="top.jsp" flush="true"/>
	<!-- Search end -->
	<!-- 返回顶部 -->
	<!--  <div id="top" style="position:fixed;cursor:pointer;right:20px;bottom:120px;width:60px;height: 54px;background-image: url('static/shadow_img/gotop.jpg'); border: 0px;"></div> -->
    <!-- 返回顶部关闭 -->
    
    <!-- 内容区 -->
	<div id="per_index">
		<!-- 左边DIV -->
		<div id="leftper">
			<div id="per_div_info">
				<c:forEach items="${info}" var="per">
					<div id="per_img">
						<a href="<%= basePath %>pers/per_details">
							<img alt="" src="${per.per_img }" style="box-shadow: 0px 5px 3px 0px rgba(0, 0, 0, 0.20);">
						</a><br>
						<div id="per_info">
							<span id="per_titleinfo"><a href="">${per.per_info }</a></span>
							<span id="likeinfo"><i class="fa fa-heart" aria-hidden="true"></i>&nbsp; ${per.per_likenum }</span>
							<span id="msginfo"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;${per.per_message_num}</span>
						</div>
					</div>
				</c:forEach>
			</div>
			<div id="pager" style="float: right;"></div>
		</div>
		
		<!-- 左边DIV-END -->
		<!-- 右边DIV -->
		<div id="rightper">
		
		</div>
		
		
	</div>
	<!-- 内容区 -->
	
	<!--尾部-->	
	<jsp:include page="tail.jsp" flush="true"/>
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
		//分页
		 $(document).ready(function() {
            $("#pager").pager({ pagenumber: 1, pagecount: ${counts}, buttonClickCallback: PageClick });
        });

        PageClick = function(pageclickednumber) {
            $("#pager").pager({ pagenumber: pageclickednumber, pagecount: ${counts}, buttonClickCallback: PageClick });
            $.ajax({  
                type:"POST",  
                url:"<%=basePath%>pers/ajaxpage",  
                dataType:"json",  
                data:{number:pageclickednumber},  
                success:function(data){ 
                	$("#per_div_info").empty();
                	$(data).each(function(i,e){
                		var $img_info='<div id="per_img"><a href="<%= basePath %>pers/per_details"><img alt="" src="'+e.per_img + 
                			'" style="box-shadow: 0px 5px 3px 0p x rgba(0, 0, 0, 0.20);"></a><br><div id="per_info"><span id="per_titleinfo"><a href="">'+e.per_info +
                				'</a></span><span id="likeinfo"><i class="fa fa-heart" aria-hidden="true"></i>&nbsp; ' + e.per_likenum +
                					'</span><span id="msginfo"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;'+e.per_message_num+'</span></div></div>';
                		$("#per_div_info").append($img_info);
                		 document.body.scrollTop = document.documentElement.scrollTop = 0;
                	});
                },  
                error:function(){  
                        alert("方法执行不成功!");  
                    }    
                 });  
        }
        
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