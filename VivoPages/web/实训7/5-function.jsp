<%-- 
    Document   : function
    Created on : 2017-9-5, 22:15:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>计算公式</title>
    </head>
    <body>
        <h2>7-5.编写程序计算下面公式：<br><img src="g2-5.png"></h2>
        请输入数字：
        <form action="" method="post"><input type="text" name="fun"></form>
            <%
                String s = request.getParameter("fun");
                double n, result = 0;
                if (s == null) {
                    n = 0;
                } else {
                    n = Double.parseDouble(s);
                }
                if (n > 0 && n < 1) {
                    result = Math.exp(-1);
                } else if (n > 3 && n < 4) {
                    result = Math.abs(n) + 2;
                } else {
                    result = Math.sin(n * n);
                }
                out.println(result);
            %>

    </body>
</html>
