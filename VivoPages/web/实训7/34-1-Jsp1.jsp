<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>request����</title>
    </head>
    <body bgcolor="#FFFFF0">
        <h2>7-34. ����������JSPҳ�棬д��request������λ�ȡ�����͵����ݡ�</h2>
        <br><h3>ҳ��1</h3>
        <form action="" method="post">
            <input type="text" name="qwe">
            <input type="submit" value="�ύ">
        </form>
        ����ʽ��<%=request.getMethod()%><br>
        �������Դ��<%=request.getRequestURI()%><br>
        �����õ�Э��<%=request.getProtocol()%><br>
        ������ļ�����<%=request.getServletPath()%><br>
        ����ķ�������IP��<%=request.getServerName()%><br>
        ����������Ķ˿ڣ�<%=request.getServerPort()%><br>
        �ͻ���IP��ַ��<%=request.getRemoteAddr()%><br>
        �ͻ�����������<%=request.getRemoteHost()%><br>
        ���ύ��ֵ��
        <%
            String str = request.getParameter("qwe");    
            try {
                byte b[] = str.getBytes("ISO-8859-1");
                str = new String(b);
            } catch (Exception exp) {
            }
            out.println(str);        
        %><br>
    </body>
</html>
