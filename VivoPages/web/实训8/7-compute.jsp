<%-- 
    Document   : 7-compute
    Created on : 2017-9-7, 9:39:10
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>简易计算器</title>
    </head>
    <h2>8-7. 编写界面如下图的简单网页计算器，要求用JavaBean 实现所有计算功能。</h2>
    <jsp:useBean id="com" class="user.computer" scope="page"/>
    <body>
        <form method="get"action="" name="compute">
            <table align="center" width="400" height="200" border="1">
                <tr>
                    <td align="center" colspan="2">我的计算器</td> 
                </tr>
                <tr>
                    <td>第一个参数:</td>
                    <td align="middle" height="30"><input type="text" name="var1"size="42" ></td>
                </tr>
                <tr>
                    <td height="30">运算符：</td>
                    <td align="left" height="30">&nbsp;
                        <select name="var3" size="1" >
                            <option value="+" selected>+</option>
                            <option value="-" >-</option>
                            <option value="*" >*</option>
                            <option value="/" >/</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>第二个参数:</td>
                    <td align="middle" height="30"><input type="text" name="var2"size="42" ></td>
                </tr>
                <tr>
                    <td align="left" colspan="2" height="30">&nbsp;<input type="submit" value="计算"></td> 
                </tr>
            </table>
        </form>
        <jsp:setProperty name="com" property="var1" param="var1"/>
        <jsp:setProperty name="com" property="var2" param="var3"/>
        <jsp:setProperty name="com" property="var3" param="var2"/>
        <%
            com.compute();
        %>       
         <hr></hr>
         <table border="0" width="99%">
             <tr><td align="center">
            计算结果： <jsp:getProperty name="com" property="var1"/>
        <jsp:getProperty name="com" property="var2"/>
        <jsp:getProperty name="com" property="var3"/>
        =<jsp:getProperty name="com" property="result"/></td></tr>
        </table>
        <hr></hr>
    </body>
</html>
