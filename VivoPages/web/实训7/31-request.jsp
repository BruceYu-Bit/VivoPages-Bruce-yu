<%-- 
    Document   : Jsp2
    Created on : 2017-7-18, 22:13:54
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>request请求对象</title>
    </head>
    <body>
        <h2>7-31. 编写一个含有下列JSP脚本内容的JSP页面，并运行，写出运行结果</h2>
        答：结果如下：<br>
        <%
            out.println("Protocol:"+request.getProtocol()+"<br>");
            out.println("Scheme:"+request.getScheme()+"<br>");
            out.println("Server Name:"+request.getServerName()+"<br>");
            out.println("Server Port:"+request.getServerPort()+"<br>");
            out.println("Protocol:"+request.getProtocol()+"<br>");
            out.println("Server Info:"+getServletConfig().getServletContext().getServerInfo()+"<br>");
            out.println("Remote Addr:"+request.getRemoteAddr()+"<br>");
            out.println("Remote Host:"+request.getRemoteHost()+"<br>");
            out.println("Character Encoding:"+request.getCharacterEncoding()+"<br>");
            out.println("Content Length:"+request.getContentLength()+"<br>");
            out.println("Content Type:"+request.getContentType()+"<br>");
            out.println("Auth Type:"+request.getAuthType()+"<br>");
            out.println("HTTP Method:"+request.getMethod()+"<br>");
            out.println("Path Info:"+request.getPathInfo()+"<br>");
            out.println("Path Trans:"+request.getPathTranslated()+"<br>");
            out.println("Query String:"+request.getQueryString()+"<br>");
            out.println("Remote User:"+request.getRemoteUser()+"<br>");
            out.println("Session ID:"+request.getRequestedSessionId()+"<br>");
            out.println("Request URL:"+request.getRequestURL()+"<br>");
            out.println("Servlet Path:"+request.getServletPath()+"<br>");
            out.println("Created:"+session.getCreationTime()+"<br>");
            out.println("LastAccessed:"+session.getLastAccessedTime()+"<br>");
            
            out.println("Accepte:"+request.getHeader("Accept")+"<br>");
            out.println("Host:"+request.getHeader("Host")+"<br>");
            out.println("Referer:"+request.getHeader("Referer")+"<br>");
            out.println("Accept-Language:"+request.getHeader("Accept-Language")+"<br>");
            out.println("Accept-Encoding:"+request.getHeader("Accept-Encoding")+"<br>");
            out.println("User-Agent:"+request.getHeader("User-Agent")+"<br>");
            out.println("Connection:"+request.getHeader("Connection")+"<br>");
            out.println("Cookie:"+request.getHeader("Cookie")+"<br>");           
        %>
    </body>
</html>
