<%-- 
    Document   : Request
    Created on : 2017-7-18, 21:25:13
    Author     : Administrator
--%>

<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Request��ȡ��Ϣ</title>
    </head>
    <body>
        <form action="" name="number" method="post" target="">
            ��������Ϣ��<input type="text"  name="num" >
            <input type="submit" name="submit" value="��ʼ">
        </form>
        <BR>�û���IP��ַ��
        <%
            String Ip = request.getRemoteAddr();
            out.println(Ip);
        %>
        <BR>��������������
        <%
            String servername = request.getServerName();
            out.println(servername);
        %>
        <BR>�������Ķ˿ںţ�
        <%
            int serverPort = request.getServerPort();
            out.println(serverPort);
        %>
        <BR>���ύ�Ĳ�����Ϣ��
        <%
            String str = request.getParameter("num");
            try {
                byte b[] = str.getBytes("ISO-8859-1");
                str = new String(b);
            } catch (Exception exp) {
            }
            out.println(str);
        %>        
    </body>
</html>
