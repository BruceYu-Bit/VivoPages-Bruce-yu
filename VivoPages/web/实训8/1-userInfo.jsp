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
        <title>�û���Ϣ</title>
    </head>
    <body bgcolor="cyan">
        <h2>8-1.����һ��javabean��װ�û�����Ϣ�����������룩UserInfo.java�����еķ�����setter�����������û�����Ϣ��getter��������ȡ�û�����Ϣ��</h2>
        <jsp:useBean id="people" class="user.UserInfo" scope="page"></jsp:useBean>
        <% people.setUsername("����");
           people.setUsercode("123456");
        %>
        �û�����Ϊ��<%=people.getUsername()%><br>
        �û�����Ϊ��<%=people.getUsercode()%><br>
    </body>
</html>
