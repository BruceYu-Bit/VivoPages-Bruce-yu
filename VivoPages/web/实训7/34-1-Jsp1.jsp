<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>request对象</title>
    </head>
    <body bgcolor="#FFFFF0">
        <h2>7-34. 下面是三个JSP页面，写出request对象如何获取表单发送的数据。</h2>
        <br><h3>页面1</h3>
        <form action="" method="post">
            <input type="text" name="qwe">
            <input type="submit" value="提交">
        </form>
        请求方式：<%=request.getMethod()%><br>
        请求的资源：<%=request.getRequestURI()%><br>
        请求用的协议<%=request.getProtocol()%><br>
        请求的文件名：<%=request.getServletPath()%><br>
        请求的服务器的IP：<%=request.getServerName()%><br>
        请求服务器的端口：<%=request.getServerPort()%><br>
        客户端IP地址：<%=request.getRemoteAddr()%><br>
        客户端主机名：<%=request.getRemoteHost()%><br>
        表单提交的值：
        <%
            String str = request.getParameter("qwe");    
            try {
                byte b[] = str.getBytes("ISO-8859-1");
                str = new String(b);
            } catch (Exception exp) {
            }
            out.println(str);        
        %><br>
    </body>
</html>
