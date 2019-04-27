<%-- 
    Document   : login
    Created on : 2017-8-12, 19:34:45
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>µÇÂ¼½çÃæ</title>
        <%@ include file="head.txt"%>
        <link rel="stylesheet" type="text/css" href="mycss.css">
    </head>
    <body style="background:url(re.jpg);width:100%;"> 
 
        <div>
            <form action="confirmlogin.jsp" method="post" name="form">
                <table align="right" border="0" width="400" height=300"  style="margin-right: 50px">     
                    <tr>
                        <td colspan="2" height="30"><h1 align="center">ÕÊºÅµÇÂ¼</h1></td>
                    </tr>
                    <tr  width="90" height="50">
                        <td style="font-size:25px" width="190">ÓÃ»§Ãû:</td>
                        <td align="center"><input type="text" name="username" maxlength="20" style="width:300px;height:50px;font-size:25px;" ></td>
                    </tr><br>
                    <tr height="60">
                        <td style="font-size:25px" width="30">ÃÜÂë:</td>
                        <td align="center"><input type="password" name="usercode" maxlength="20" style="width:300px;height:50px;font-size:25px"></td>
                    </tr>
                    <tr height="60">
                        <td align="right" colspan="2"><input type="submit" name="submit" value="µÇ   Â¼" style="width:300px;height:50px;font-size:25px;background-color: #2894FF"></td>
                    </tr>
                    <tr height="60">
                        <td align="right" colspan="2"><a href="inputRegisterMess.jsp" style="font-size:25px;text-decoration: none;padding:12px 72px;background-color: #ecd8db">×¢²áVIVOÕÊºÅ</a></td>
                    </tr>
                </table>                 
            </form>
        </div>        
    </body>
</html>
