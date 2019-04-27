<%--
    Document   : 1-userInfo
    Created on : 2017-9-6, 15:15:24
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="user.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>用户信息</title>
    </head>
    <body bgcolor="cyan">
        <h2>8-1.建立一个javabean封装用户的信息（姓名和密码）UserInfo.java，其中的方法有setter方法来设置用户的信息，getter方法来获取用户的信息。</h2>
        <jsp:useBean id="people" class="user.UserInfo" scope="page"></jsp:useBean>
        <% people.setUsername("余晓");
           people.setUsercode("123456");
        %>
        用户名是为：<%=people.getUsername()%><br>
        用户密码为：<%=people.getUsercode()%><br>
    </body>
</html>
