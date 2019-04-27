<%-- 
    Document   : author
    Created on : 2017-8-9, 10:14:42
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Signing</title>
    </head>
    <body>
        <h2>8-32.作者详细情况输入/修改表单，见下图。表单数据由一个Servlet接收，并由一个新页面显示。</h2>
        <form method="post" action="author">
            <table border="1" align="center" width="450" height="300">
                <tr height="50">
                    <td colspan="4" align="center"><b>作者详细信息</b>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="but" value="新增">
                    </td>
                </tr>
                <tr height="35">
                    <td>作者号</td>
                    <td><input type="text" name="number" maxlength="15"></td>
                    <td>作者名</td>
                    <td><input type="text" name="name" maxlength="15"></td>
                </tr>
                <tr height="35">
                    <td>作者姓</td>
                    <td><input type="text" name="xing" maxlength="15"></td>
                    <td>电话</td>
                    <td><input type="text" name="tel" maxlength="15"></td>
                </tr>
                <tr height="35">
                    <td>地址</td>
                    <td><input type="text" name="address" maxlength="15"></td>
                    <td>城市</td>
                    <td><input type="text" name="city" maxlength="15"></td>
                </tr>
                <tr height="35">
                    <td>州</td>
                    <td><input type="text" name="status" maxlength="15"></td>
                    <td>邮编</td>
                    <td><input type="text" name="code" maxlength="15"></td>
                </tr>
                <tr height="40">
                    <td>签约</td>
                    <td colspan="3"><input type="radio" name="choice" value="是" >是</td></td>
                </tr>
                <tr><td align="center" colspan="4"><input type="submit" name="submit" value="提交"></td></tr>
            </table>
        </form>
    </body>
</html>
