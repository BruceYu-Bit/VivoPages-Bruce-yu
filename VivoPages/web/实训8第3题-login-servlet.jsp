<%-- 
    Document   : 3-login-servlet
    Created on : 2017-9-6, 17:25:12
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>�û���¼</title>
    </head>
    <body>
        <h2>8-3.��ɼ򵥵ĵ�½����Ҫ�󣺴ӱ������û��������룬�ύ����Servlet��֤�û��������롣�����֤�ɹ���ʾ�����ǺϷ��û���ף���㣡���������֤���ɹ���ʾ���㲻�ǺϷ��û���������ȷ�ϣ�����</h2>
        <form action="User" method="post" name="biaodan">
            �û���¼����<br>
            �������û���:<input type="text" name="xingming" maxlength="30"><br>
            ����������:<input type="password" name="password" maxlength="30"><br>
            <input type="submit" name="submi" value="��¼" ><br>               
        </form>
    </body>
</html>
