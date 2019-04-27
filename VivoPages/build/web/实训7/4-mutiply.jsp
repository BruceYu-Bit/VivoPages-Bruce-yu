<%-- 
    Document   : mutiply
    Created on : 2017-9-5, 22:05:04
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>九九乘法表</title>
    </head>
    <body>
        <h2>7-4.显示乘法九九口诀表，格式如下：</h2>
        <%
            for(int i=1;i<=9;i++)
            {
                for(int j=1;j<=i;j++)
                {
                    out.print(j+"x"+i+"="+(i*j)+" ") ;
                }
                out.print("<br>");
            }
        %>
    </body>
</html>
