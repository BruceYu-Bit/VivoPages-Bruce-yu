<%-- 
    Document   : 6-compute
    Created on : 2017-9-7, 9:08:45
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>简易计算器</title>
    </head>
    <jsp:useBean id="computer" class="user.computer" scope="page"/>
    <body>
        <h2>8-6.完成简单的计算器程序。要求：(1)从表单输入两个实数，选择计算符，点击[等于]提交计算，显示计算结果。(2)计算过程由JavaBean完成。界面见下图。</h2>
        <form method="get"action="" name="compute">
            <input type="text" name="var1"size="42" >
            <select name="var3" size="1" >
                <option value="+" selected>加</option>
                <option value="-" >减</option>
                <option value="*" >乘</option>
                <option value="/" >除</option>
            </select>
            <input type="text" name="var2"size="42" >
            <input type="submit" value="等于">
        </form>
        <jsp:setProperty name="computer" property="var1" param="var1"/>
        <jsp:setProperty name="computer" property="var2" param="var3"/>
        <jsp:setProperty name="computer" property="var3" param="var2"/>
        <jsp:getProperty name="computer" property="var1"/>
        <jsp:getProperty name="computer" property="var2"/>
        <jsp:getProperty name="computer" property="var3"/>
        <%
            computer.compute();
        %>
        =<jsp:getProperty name="computer" property="result"/>
    </body>
</html>
