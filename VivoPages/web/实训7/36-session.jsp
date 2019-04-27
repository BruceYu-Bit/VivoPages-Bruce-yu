<%-- 
    Document   : 36-session
    Created on : 2017-9-7, 16:35:33
    Author     : Administrator
--%>

<%@page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
 <%
            Date createTime=new Date(session.getCreationTime ());
            Date lastAccessTime=new Date(session.getLastAccessedTime());
            String title="再次访问实例";
            Integer visitCount=new Integer(0);
            String visitCountKey=new String("visitCount");
            String userIDKey=new String("userID");
            String userID=new String("ABCD");
            
            if(session.isNew()){
                title="访问实例";
                session.setAttribute(userIDKey, userID );
                session.setAttribute(visitCountKey, visitCount);
            }else{
                visitCount=(Integer)session.getAttribute(visitCountKey);
                visitCount +=1;
                userID=(String)session.getAttribute(userIDKey);
                session.setAttribute(visitCountKey,visitCount);            
            }            
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>session跟踪</title>
    </head>    
    <body>
        <h2>7-36. 执行下面页面，写出sessiont对象在页面被多次调用时传递了哪些数据的值?</h2>
        <h1>Session跟踪</h1>
        <table border="1" align="center">
            <tr bgcolor="#949494">
                <th>Session信息</th>
                <th>值</th>
            </tr>
            <tr>
                <td>id</td>
                <td><%out.print(session.getId());%></td>
            </tr>
            <tr>
                <td>创建时间</td>
                <td><%out.print(createTime);%></td>
            </tr>
            <tr>
                <td>最后访问时间</td>
                <td><% out.print(lastAccessTime);%></td>
            </tr>
            <tr>
                <td>用户ID</td>
                <td><%out.print(userID);%></td>
            </tr>
            <tr>
                <td>访问次数</td>
                <td><%out.print(visitCount);%></td>
            </tr>
        </table>    
    </body>
</html>
