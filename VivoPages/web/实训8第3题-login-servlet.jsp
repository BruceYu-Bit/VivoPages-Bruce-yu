<%-- 
    Document   : 3-login-servlet
    Created on : 2017-9-6, 17:25:12
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>用户登录</title>
    </head>
    <body>
        <h2>8-3.完成简单的登陆程序。要求：从表单输入用户名和密码，提交后用Servlet验证用户名和密码。如果验证成功提示“你是合法用户，祝贺你！”，如果验证不成功提示“你不是合法用户，请重新确认！”。</h2>
        <form action="User" method="post" name="biaodan">
            用户登录界面<br>
            请输入用户名:<input type="text" name="xingming" maxlength="30"><br>
            请输入密码:<input type="password" name="password" maxlength="30"><br>
            <input type="submit" name="submi" value="登录" ><br>               
        </form>
    </body>
</html>
