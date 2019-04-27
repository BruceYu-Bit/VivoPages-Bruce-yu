<%-- 
    Document   : lookAllOrderForm
    Created on : 2017-9-12, 1:40:55
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查看所有订单</title>
    </head>
    <body style="background:url(x202.jpg);width:100%;"> 
    <body>
        <form action="lookall.jsp" method="post">
             <table align="center" border="0" width="30%" height="200">     
                    <tr>
                        <td colspan="2" height="50"><h1 align="center">欢迎来到查询界面</h1></td>
                    </tr>
                    <tr  width="280" height="50">
                        <td align="right">用户名：</td>
                        <td align="left"><input type="text" name="username" maxlength="20"></td>
                    </tr>                    
                    <tr height="20">
                        <td align="center" colspan="2"><input type="submit" name="submit" value="提交"></td>
                    </tr>
                </table>  
        </form>
    </body>
</html>
