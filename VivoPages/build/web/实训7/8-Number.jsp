<%-- 
    Document   : Number
    Created on : 2017-7-18, 21:01:27
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>五角数</title>
    </head>
    <body>
        <h2>7-8.五角数被定义为n(3n-1)/2，其中n=1、2、...。所以，当n分别取1、2、3、4时分别得到1、5、12、22。编写程序计算从1到N范围内的所有五角数，数N从表单输入。</h2>
        <form action="" name="number" method="get">
            请输入一个整数：<input type="text"  name="num">
            <input type="submit" name="submit" value="开始">
        </form>
        <%
            String s = request.getParameter("num");
            double n;
            if (s == null) {
                n = 1;
            } else {
                n = Double.parseDouble(s);

            }
            for (int i = 1; i <= n; i++) {
                if ((i * (3 * i - 1) / 2) <= n) {
                    out.println(i * (3 * i - 1) / 2 + " ");
                }
            }
        %>
    </body>
</html>
