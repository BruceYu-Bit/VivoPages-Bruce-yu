<%-- 
    Document   : exitServlet
    Created on : 2017-8-12, 19:40:36
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>退出界面</title>
    </head>
    <body style="background:url(x204.jpg);width:100%;"> 
    <body>
        <form action="index.jsp" method="post">
            <h1 align="center">确认退出？</h1>
            <table width="95%">
                <tr>
                    <td align="center">
                        <input type="submit" name="submit" value="确认" style="width: 245px;height: 50px;font-size: 25px;"><br><br>
                        <a href="index.jsp" style="font-size:25px;text-decoration: none;padding:12px 72px;background-color: #ecd8db">返回主页</a>
                    </td>
                </tr>            
            </table>
        </form>
    </body>
</html>
