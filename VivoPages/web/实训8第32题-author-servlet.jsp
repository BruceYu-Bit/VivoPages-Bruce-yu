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
        <h2>8-32.������ϸ�������/�޸ı�������ͼ����������һ��Servlet���գ�����һ����ҳ����ʾ��</h2>
        <form method="post" action="author">
            <table border="1" align="center" width="450" height="300">
                <tr height="50">
                    <td colspan="4" align="center"><b>������ϸ��Ϣ</b>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="but" value="����">
                    </td>
                </tr>
                <tr height="35">
                    <td>���ߺ�</td>
                    <td><input type="text" name="number" maxlength="15"></td>
                    <td>������</td>
                    <td><input type="text" name="name" maxlength="15"></td>
                </tr>
                <tr height="35">
                    <td>������</td>
                    <td><input type="text" name="xing" maxlength="15"></td>
                    <td>�绰</td>
                    <td><input type="text" name="tel" maxlength="15"></td>
                </tr>
                <tr height="35">
                    <td>��ַ</td>
                    <td><input type="text" name="address" maxlength="15"></td>
                    <td>����</td>
                    <td><input type="text" name="city" maxlength="15"></td>
                </tr>
                <tr height="35">
                    <td>��</td>
                    <td><input type="text" name="status" maxlength="15"></td>
                    <td>�ʱ�</td>
                    <td><input type="text" name="code" maxlength="15"></td>
                </tr>
                <tr height="40">
                    <td>ǩԼ</td>
                    <td colspan="3"><input type="radio" name="choice" value="��" >��</td></td>
                </tr>
                <tr><td align="center" colspan="4"><input type="submit" name="submit" value="�ύ"></td></tr>
            </table>
        </form>
    </body>
</html>
