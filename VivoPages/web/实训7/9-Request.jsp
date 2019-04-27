<%-- 
    Document   : Request
    Created on : 2017-7-18, 21:25:13
    Author     : Administrator
--%>

<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Request获取信息</title>
    </head>
    <body>
        <form action="" name="number" method="post" target="">
            请输入信息：<input type="text"  name="num" >
            <input type="submit" name="submit" value="开始">
        </form>
        <BR>用户的IP地址：
        <%
            String Ip = request.getRemoteAddr();
            out.println(Ip);
        %>
        <BR>服务器主机名：
        <%
            String servername = request.getServerName();
            out.println(servername);
        %>
        <BR>服务器的端口号：
        <%
            int serverPort = request.getServerPort();
            out.println(serverPort);
        %>
        <BR>表单提交的参数信息：
        <%
            String str = request.getParameter("num");
            try {
                byte b[] = str.getBytes("ISO-8859-1");
                str = new String(b);
            } catch (Exception exp) {
            }
            out.println(str);
        %>        
    </body>
</html>
