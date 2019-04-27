<%-- 
    Document   : 3-Fibonanci
    Created on : 2017-9-5, 18:58:04
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fibonanci级数</title>
    </head>
    <body>
        <h2>7-3.求Fibonancii级数所有前300项，该级数形式：1,1,2,3,5,8,13,21,34,......，其中X(1)=X(2)=1，X(i)=X(i-1)+X(i-2)。</h2>
        <%
            double x1=1,x2=1;
            double temp=0;
            out.print(x1);%><br>
         <%
            out.print(x2);
         %><br><%
            for(int i=0;i<298;i++)
            {
                temp=x2;
                x2=x2+x1;
                x1=x2;
                out.println(x2+"<br>");
            }
        %>
    </body>
</html>
