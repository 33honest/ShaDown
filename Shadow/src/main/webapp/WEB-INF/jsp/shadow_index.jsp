<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<title>觅影</title>
	<base href="<%=basePath%>">
	</head>
<body>	
	<jsp:include page="pj.jsp"  flush="true" >   
  		 <jsp:param name="tag" value="1" />
	</jsp:include>
	<div class="nav">
    <div style="float: left;margin-left: 80px;margin-top: 9px;width: 140px;"><a href="per/per_details"><img alt="觅影" src="static/shadow_img/logo.jpg"></a></div>
		<div class="nav_li">
			<ul>
				<li><a href="pers/per_ind"><h5>期刊</h5></a></li>
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
	<div></div>
	<!-- banner start 版图 -->
	<div id="banner_a">
	<div class="banner">
	       <section id="dg-container" class="dg-container">
	            <div class="dg-wrapper">
	                <a link="user/sha_index">
	                    <img src="static/shadow_img/1.jpg"/>
	                </a>
	                <a href="" link="user/list">
	                    <img src="static/shadow_img/2.jpg"/>
	                </a>
	                <a href="" link="user/list">
	                    <img src="static/shadow_img/3.jpg"/>
	                </a>
	                <a href="" link="user/list">
	                    <img src="static/shadow_img/4.jpg"/>
	                </a>
	                 <a href="" link="user/list">
	                    <img src="static/shadow_img/5.jpg"/>
	                </a>
	            </div>
	            <ol class="button" id="lightButton">
	                <li index="0">
	                <li index="1">
	                <li index="2">
	                <li index="3">
	                <li index="4">
	            </ol>
	        </section>
	    </div>
	 </div>
	<!-- banner end -->
	<div id="per_font">
			<h3><span class="fa fa-medium" style="color: rgb(221, 88, 98); font-size: 20px;"></span>&nbsp;期刊</h3>
		</div>
	<!-- periodical start 期刊 -->
	<div id="periodical" >
		<!-- 期刊图片 -->
		<div class="imgstyle">
			<div id="all">
				<div class="content">
					<div class="w200 h100 cr mt20 p10 " style="width:500px; height:350px; overflow:hidden">
	            		<img src="static/shadow_img/qk.jpg"/>
	           		 </div>
				</div>
			</div>
		</div>
		<!-- 内容  -->
		<div class="per_context">
			<h2><a href="" id="per_title"><span class="glyphicon glyphicon-headphones" style="color: rgb(221, 88, 98);font-size: 18px;"> </span>人类首张在太空录制的专辑</a></h2>
			<p id="per_text">
			
				太空站上有一种区别于地球的“太空文化”正在慢慢形成。这里的生活就是人类未来在其他星球生活的缩影。一切的歌曲、舞蹈、画作、诗篇等艺术文化，都将随着那里而演化，不同于在地球上的状态。也可以这样说，这算是录制这张专辑的初衷。
				
			</p>
			<p id="per_date">
				2018-01-18 &nbsp;第一期
			</p>
			<a href="" id="per_show">全文</a>
		</div>
	</div>
	<!-- periodical end 期刊 -->
	
	
	<div style="width:1310px;height:500px;margin:0 auto;overflow:hidden;">
		<!-- single start 单曲  and Leaving start 留言-->
		<div id="sl" style="width:1000px;height:450px;margin:0 auto;overflow:hidden;box-shadow: 2px 2px 22px #eaeaea;float: left;">
			<!-- 单曲 -->
			<div id="single">
				<div id="sin_font">
					<h4><span class="fa fa-medium" style="color: rgb(221, 88, 98); font-size: 15px;"></span>&nbsp;单曲</h4>
				</div>
				<!-- 模块一 -->
					<div id="single_1">
					
						<div id="sin_1">
							<img  src="static/shadow_img/s1.jpg">
						</div>
						 <h3><a href="" id="sin2_title">这里是武汉，躁动的朋克之都</a></h3>
						 <p id="sin1_date">言之・LUO・2018-01-19</p>
						 <p id="sin1_context">
						 	“我希望，没有人能嘲笑诗人太傻。”
						 </p>
					</div>
				
				<!-- 模块二 -->
					<div id="single_2">
						<div id="sin_2">
							<img  src="static/shadow_img/s2.jpg">
						</div>
						 <h3><a href="" id="sin2_title">这里是武汉，躁动的朋克之都</a></h3>
						 
						 <p id="sin2_date">言之・LUO・2018-01-19</p>
						 <p id="sin2_context">
						 	“我希望，没有人能嘲笑诗人太傻。”
						 </p>
						 
					</div>
					
				<!-- 模块三 -->
					<div id="single_3">
					
						<div id="sin_3">
							<img  src="static/shadow_img/s3.jpg">
						</div>
						 <h3><a href="" id="sin3_title">这里是武汉，躁动的朋克之都</a></h3>
						 <p id="sin3_date">言之・LUO・2018-01-19</p>
						 <p id="sin3_context">
						 	“我希望，没有人能嘲笑诗人太傻。”
						 </p>
					</div>
			</div>
			
			<!-- 娱乐 -->
			<div id="activity">
				<div id="act_font">
					<h4><span class="fa fa-medium" style="color: rgb(221, 88, 98); font-size: 15px;"></span>&nbsp;活动</h4>
				</div>
				<div class="act_context">
					<h3><a href="" id="act_title">人类首张在太空录制的专辑</a></h3>
					<p id="act_text">
					
						太空站上有一种区别于地球的“太空文化”正在慢慢形成。这里的生活就是人类未来在其他星球生活的缩影。一切的歌曲、舞蹈、画作、诗篇等艺术文化，都将随着那里而演化，不同于在地球上的状态。也可以这样说，这算是录制这张专辑的初衷。
						
					</p>
					<p id="act_date">
						2018-01-18 &nbsp;浏览量：8526
					</p>
					<hr>
				</div>
				
				<div class="act2_context">
					<hr>
					<h3><a href="" id="act2_title">人类首张在太空录制的专辑</a></h3>
					<p id="act2_text">
					
						太空站上有一种区别于地球的“太空文化”正在慢慢形成。这里的生活就是人类未来在其他星球生活的缩影。一切的歌曲、舞蹈、画作、诗篇等艺术文化，都将随着那里而演化，不同于在地球上的状态。也可以这样说，这算是录制这张专辑的初衷。
						
					</p>
					<p id="act2_date">
						2018-01-18 &nbsp;浏览量：8526
					</p>
				</div>
			</div>
		</div>
		<!-- 演奏一曲 -->
		<div id="sl" style="width:295px;height:450px;margin:0px auto;overflow:hidden;box-shadow: 2px 2px 22px #eaeaea;">
			<iframe src="static/drumkit.html" width="300px" height="450px" style="border:none;float: left; margin-left:0px;" scrolling="no"></iframe>
		</div>
	</div>
	 
	<!-- 返回顶部 -->
	 <!-- <div id="top" style="position:fixed;cursor:pointer;right:20px;bottom:120px;width:60px;height: 54px;background-image: url('static/shadow_img/gotop.jpg'); border: 0px;"></div>
    <script>
         top.onclick = function(){
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
        }
          
    </script> -->
    <!-- 返回顶部关闭 -->
	
	
	<!--尾部-->	
	<div id="tail">
		<!-- 名言  -->
			<div style="width: auto;height:40px;margin: 20px auto;margin-left: 30px;">
				<p id="myp">不是老歌动听·而是回忆动情</p><br><br>
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
			
				<p>© 2018 觅影<img src="static/shadow_img/tail.jpg"></p>
				
			</div>
			
	</div>
	
</body>
</html>

