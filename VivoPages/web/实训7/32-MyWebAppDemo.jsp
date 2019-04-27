<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyWebAppDemo</title>
    </head>
    <body>
        <h2>7-32. 假设请求的页面是index.jsp,项目是MyWebAppDemo，在index.jsp中如下脚本，运行index.jsp写出运行结果</h2>
        <br>运行结果如下：<br>
        <%
            String path=request.getContextPath();
            String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
            String remoteAddress = request.getRemoteAddr();
            String servletPath=request.getServletPath();
            String realPath=request.getRealPath("/");
            String remoteUser=request.getRemoteUser();
            String requestURI=request.getRequestURI();
            out.println("path:"+path+"<br>");
            out.println("basePath:"+basePath+"<br>");
            out.println("remoteAddr:"+remoteAddress+"<br>");
            out.println("servletPath："+realPath+"<br>");
            out.println("realPath:"+realPath+"<br>");
            out.println("reamoteUser:"+remoteUser+"<br>");
            out.println("requestURI:"+requestURI+"<br>");
        %>
    </body>
</html>
