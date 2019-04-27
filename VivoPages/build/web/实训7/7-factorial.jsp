<%-- 
    Document   : 7-factorial
    Created on : 2017-9-6, 9:10:05
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>求阶乘</title>
    </head>
    <body>
        <h2>7-7.计算1！+ 2！+ 3！+ … + 7！。</h2>
        <%
            int sum=0;
            for(int i=1;i<=7;i++)
            {
                int s=1;
                for(int j=1;j<=i;j++)
                {
                   s=s*j;
                }
                sum=sum+s;
            }
            out.println("1！+ 2！+ 3！+ … + 7！="+sum);
        %>
    </body>
</html>
