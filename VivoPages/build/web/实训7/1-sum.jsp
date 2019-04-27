<%-- 
    Document   : sum
    Created on : 2017-9-5, 18:45:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>求和</title>
    </head>
    <body>
        <h1>7-1.试利用for循环，计算1+2+3+4+5+…+100的总和。</h1><br>
        <%
            int sum = 0;
            for (int i = 0; i <= 100; i++) {
                sum = sum + i;
            }
        %>
        1+2+3+4+5+…+100的总和为<%=sum%>
    </body>
</html>
