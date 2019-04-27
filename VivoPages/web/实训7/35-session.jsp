<%-- 
    Document   : 35-session
    Created on : 2017-9-6, 10:43:57
    Author     : Administrator
--%>

<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session对象</title>
    </head>
    <h2>7-35. 执行下面页面，写出sessiont对象在页面被多次调用时如何传递name和nmber的值</h2>
    <body><br>
        session的创建时间：<%=session.getCreationTime()%>&nbsp;&nbsp;<%=new Date(session.getCreationTime())%><br><br>
        session的Id号：<%=session.getId()%><br><br>
        客户端最近一次请求的时间;<%=session.getLastAccessedTime()%>&nbsp;&nbsp;<%=new java.sql.Time(session.getLastAccessedTime())%><br><br>
        两次请求间隔多长时间此SESSION被取消（ms）：<%=session.getMaxInactiveInterval ()%><br><br>
        是否是新创建的一个SESSION：<%=session.isNew()?"是":"否"%><br><br>
        <%
            session.putValue("name","编程");
            session.putValue("number","147369");
        %>
        <%
            for(int i=0;i<session.getValueNames().length;i++)
            {
                out.println(session.getValueNames()[i]+"="+session.getValue(session.getValueNames()[i]));
            }
        %>
        <!-返回的是从格林威治时间（GMT）1970年01月01日0：00：00起到计算当时的毫秒数->
    </body>
</html>
