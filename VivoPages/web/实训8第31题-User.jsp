<%-- 
    Document   : MInfo
    Created on : 2017-8-9, 9:17:04
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>������Ϣע����</title>
    </head>
    <body bgcolor="white">    
        <br><br><br><br><br><br>
        <form method="post" action="UserInfo">
            <table align="center"  border="1" width="400" height="400">
                <tr height="25">
                    <td>����</td>
                    <td><input type="text" name="name" maxlengt="20" height="30"></td>
                </tr>
                <tr height="25">
                    <td>����</td>
                    <td><input type="text" name="code" maxlengt="20" height="30"></td>
                </tr>
                <tr height="100">
                    <td>��������</td>
                    <td><textarea cols="40" rows="7" name="describe"></textarea></td>
                </tr>
                <tr>
                    <td>�Ա�</td>
                    <td><input type="radio" name="sex" value="��" checked="checked">��&nbsp;
                    <input type="radio" name="sex" value="Ů" >Ů</td>
                </tr>
                <tr height="25">
                    <td>�꼶</td>
                    <td>
                        <select name="grade">
                            <option value="One" selected>One</option>
                            <option value="Two" >Two</option>
                            <option value="Three">Three</option>
                            <option value="Four">Four</option>
                            <option value="Five">Five</option>
                            <option value="Six">Six</option>
                            <option value="Seven">Seven</option>
                            <option value="Eight">Eight</option>
                            <option value="Nine">Nine</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>����<input type="checkbox" name="hobby" value="����"></td>
                    <td><input type="checkbox" name="hobby1" value="A.����">A.����
                        <input type="checkbox" name="hobby2" value="B.����">B.����
                        <input type="checkbox" name="hobby3" value="C.ƹ����">C.ƹ����<br>
                        <input type="checkbox" name="hobby4" value="D.��Ӿ">D.��Ӿ
                        <input type="checkbox" name="hobby5" value="E.�����">E.�����
                        <input type="checkbox" name="hobby6" value="F.����">F.����
                    </td>
                </tr>
                <tr>
                    <td>Resume</td>
                    <td><input type="file" name="myfile"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" name="button" value="ok">
                        <a href="UserInfo" value="Go">&nbsp;Go</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
