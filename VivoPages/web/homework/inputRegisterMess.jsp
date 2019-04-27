<%-- 
    Document   : inputRegisterMess
    Created on : 2017-8-12, 19:34:02
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="head.txt"%>
        <title>注册页面</title>
        <link rel="stylesheet" type="text/css" href="mycss.css">
    </head>
   <body style="background:url(re.jpg);width:100%;"> 
    <body>
        <font size="2">
        <div align="center">
            <br><br>
            <form action="confrimregister.jsp" method="post" name="form">
                <table border='0' width="550" height="300">
                    <h2>用户名由字母，数字，下划线组成，*注释的项必须填写
                    <tr>
                        <td><h3>*用户名称：</td>
                        <td><input type="text" name="logname" style="width:150px;height:20px;"></td>
                        <td><h3>*用户密码：</td>
                        <td><input type="password" name="password" style="width:150px;height:20px";></td>
                    </tr>
                    <tr>
                        <td><h3>*重复密码：</td>
                        <td><input type="password" name="again-password" style="width:150px;height:20px;"></td>
                        <td><h3>*联系电话：</td>
                        <td><input type="text" name="phone" style="width:150px;height:20px;"></td>
                    </tr>
                    <tr>
                        <td><h3>*邮寄地址：</td>
                        <td><input type="text" name="address" style="width:150px;height:20px;"></td>
                        <td><h3>*真实姓名</td>
                        <td><input type="text" name="realname" style="width:150px;height:20px;"></td>
                    </tr>
                    <tr>
                        <td colspan ="4" align='center'>
                            <input type="submit" name="submit" value="提交" align='center' style="width:80px;height:40px;font-size:20px;" >
                        </td>
                    </tr>
                </table>               
        <%
            String admin, code1 = "", code2 = "", tel = "", addr = "", nickname = "", user1="";
            admin = request.getParameter("logname");
            code1 = request.getParameter("password");
            code2 = request.getParameter("again-password");
            tel = request.getParameter("phone");
            addr = request.getParameter("address");
            nickname = request.getParameter("realname");   
        %>
        </form>  
        </div>
        <br>
        <table width="99%">
            <tr>
                <td align="right">
                    <A href="index.jsp" style="font-size:20px;">返回主页</A>
                </td>
            </tr>        
        </table>
    </body>
</html>
