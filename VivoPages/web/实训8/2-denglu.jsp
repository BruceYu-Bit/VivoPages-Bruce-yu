<%-- 
    Document   : 2-denglu
    Created on : 2017-9-6, 15:49:02
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="user.Usercheck"%>
<!DOCTYPE html>
<html>
    <head>
        <title>�û���¼</title>
    </head>
    <body>
        <jsp:useBean id="people" class="user.Usercheck" scope="page"></jsp:useBean>
            <h2>8-2��ɼ򵥵ĵ�½����Ҫ�󣺴ӱ������û��������룬�ύ����JavaBean��֤�û��������롣�����֤�ɹ���ʾ�����ǺϷ��û���ף���㣡���������֤���ɹ���ʾ���㲻�ǺϷ��û���������ȷ�ϣ�����</h2>
            <form action="" method="post" name="biaodan">
                �û���¼����<br>
                �������û���:<input type="text" name="xingming" maxlength="30"><br>
                ����������:<input type="password" name="password" maxlength="30"><br>
                <input type="submit" name="submi" value="��¼" ><br>               
            </form>                
        <jsp:setProperty name="people" property="username" param="xingming"/>
        <jsp:setProperty name="people" property="usercode" param="password"/>
        �û����ǣ�<jsp:getProperty name="people" property="username"/><br>
        �����ǣ�<jsp:getProperty name="people" property="usercode"/><br>
        <%
            if(people.judge()==1)
            {
                out.print("���ǺϷ��û�,ף����");
            }
            else{
                out.print("�����ǺϷ��û��������µ�¼");
            }         
        %>
    </body>
</html>
