<%-- 
    Document   : 9-show-servlet
    Created on : 2017-9-7, 12:53:14
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet Demo</title>
    </head>
    <body>
        <h2>8-9.运行下面index.jsp页面和Servlet程序，说明index.jsp与PassParamsServlet的关系，以及index.jsp中表单请求的数据如何传递给PassParamsServlet？</h2>
        <form name="myForm" action="PassParams" method="post" >
            <table border="1">
                <tr>
                    <td>param1 </td>
                    <td><input name="param1" type="text"/></td>
                </tr>
                <tr>
                   <td>param2 </td>
                   <td><input name="param2" type="text"/></td>
                </tr>
                 <tr>
                   <td>param3 </td>
                   <td><input name="param3" type="text"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="mySubmit"/></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
