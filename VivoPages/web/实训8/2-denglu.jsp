<%-- 
    Document   : 2-denglu
    Created on : 2017-9-6, 15:49:02
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="user.Usercheck"%>
<!DOCTYPE html>
<html>
    <head>
        <title>用户登录</title>
    </head>
    <body>
        <jsp:useBean id="people" class="user.Usercheck" scope="page"></jsp:useBean>
            <h2>8-2完成简单的登陆程序。要求：从表单输入用户名和密码，提交后用JavaBean验证用户名和密码。如果验证成功提示“你是合法用户，祝贺你！”，如果验证不成功提示“你不是合法用户，请重新确认！”。</h2>
            <form action="" method="post" name="biaodan">
                用户登录界面<br>
                请输入用户名:<input type="text" name="xingming" maxlength="30"><br>
                请输入密码:<input type="password" name="password" maxlength="30"><br>
                <input type="submit" name="submi" value="登录" ><br>               
            </form>                
        <jsp:setProperty name="people" property="username" param="xingming"/>
        <jsp:setProperty name="people" property="usercode" param="password"/>
        用户名是：<jsp:getProperty name="people" property="username"/><br>
        密码是：<jsp:getProperty name="people" property="usercode"/><br>
        <%
            if(people.judge()==1)
            {
                out.print("您是合法用户,祝贺你");
            }
            else{
                out.print("您不是合法用户，请重新登录");
            }         
        %>
    </body>
</html>
