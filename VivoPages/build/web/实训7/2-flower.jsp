<%-- 
    Document   : flower
    Created on : 2017-9-5, 18:50:55
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>水仙花数</title>
    </head>
    <body>
        <h2>7-2.水仙花数是指其个位、十位、百位三个数的立方和等于这个数本身，求出100～999之间所有水仙花数。</h2>
        <%
            for(int i=100;i<=999;i++)
            {
                int a1=i/100;
                int a2=(i-a1*100)/10;
                int a3=(i-a1*100-a2*10);
                if(a1*a1*a1+a2*a2*a2+a3*a3*a3==i)
                {
                    out.print(i+" ");
                }
            }
        %>
    </body>
</html>
