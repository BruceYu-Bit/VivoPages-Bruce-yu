<%-- 
    Document   : confirm
    Created on : 2017-9-11, 21:29:33
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="5;url=index.jsp">
        <title>确认页面</title>
    </head>
    <body style="background:url(x203.jpg);width:100%;"> 
    <body>
        <h2>您的订单已收到，请耐心等待发货！请在五秒后继续您的浏览或者退出操作！谢谢您的惠顾！</h2>
        <%
            response.setHeader("refresh","5");     
        %>
    </body>
</html>
