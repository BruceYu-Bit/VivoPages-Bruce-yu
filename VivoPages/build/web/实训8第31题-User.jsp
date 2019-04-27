<%-- 
    Document   : MInfo
    Created on : 2017-8-9, 9:17:04
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>个人信息注册网</title>
    </head>
    <body bgcolor="white">    
        <br><br><br><br><br><br>
        <form method="post" action="UserInfo">
            <table align="center"  border="1" width="400" height="400">
                <tr height="25">
                    <td>姓名</td>
                    <td><input type="text" name="name" maxlengt="20" height="30"></td>
                </tr>
                <tr height="25">
                    <td>密码</td>
                    <td><input type="text" name="code" maxlengt="20" height="30"></td>
                </tr>
                <tr height="100">
                    <td>个人描述</td>
                    <td><textarea cols="40" rows="7" name="describe"></textarea></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td><input type="radio" name="sex" value="男" checked="checked">男&nbsp;
                    <input type="radio" name="sex" value="女" >女</td>
                </tr>
                <tr height="25">
                    <td>年级</td>
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
                    <td>爱好<input type="checkbox" name="hobby" value="爱好"></td>
                    <td><input type="checkbox" name="hobby1" value="A.足球">A.足球
                        <input type="checkbox" name="hobby2" value="B.篮球">B.篮球
                        <input type="checkbox" name="hobby3" value="C.乒乓球">C.乒乓球<br>
                        <input type="checkbox" name="hobby4" value="D.游泳">D.游泳
                        <input type="checkbox" name="hobby5" value="E.橄榄球">E.橄榄球
                        <input type="checkbox" name="hobby6" value="F.网球">F.网球
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
