<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
  <head>
    <title>Table</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <table width="100%" border="1" cellpadding="0" cellspacing="0" style="text-align:center;">  
      
        <tr height="160px">  
            <td colspan="4" align="center">
                <!--
                pageShow 总页数，当前页，数据源，显示条数，样式
                -->
                <#import "pageShow.ftl" as page>
                <@page.pageShow 100, 1, "#", 15, "blue"/><br/>
            </td>  
        </tr>  
    </table>  
  </body>
</html>