<%-- 
    Document   : 35-session
    Created on : 2017-9-6, 10:43:57
    Author     : Administrator
--%>

<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session����</title>
    </head>
    <h2>7-35. ִ������ҳ�棬д��sessiont������ҳ�汻��ε���ʱ��δ���name��nmber��ֵ</h2>
    <body><br>
        session�Ĵ���ʱ�䣺<%=session.getCreationTime()%>&nbsp;&nbsp;<%=new Date(session.getCreationTime())%><br><br>
        session��Id�ţ�<%=session.getId()%><br><br>
        �ͻ������һ�������ʱ��;<%=session.getLastAccessedTime()%>&nbsp;&nbsp;<%=new java.sql.Time(session.getLastAccessedTime())%><br><br>
        �����������೤ʱ���SESSION��ȡ����ms����<%=session.getMaxInactiveInterval ()%><br><br>
        �Ƿ����´�����һ��SESSION��<%=session.isNew()?"��":"��"%><br><br>
        <%
            session.putValue("name","���");
            session.putValue("number","147369");
        %>
        <%
            for(int i=0;i<session.getValueNames().length;i++)
            {
                out.println(session.getValueNames()[i]+"="+session.getValue(session.getValueNames()[i]));
            }
        %>
        <!-���ص��ǴӸ�������ʱ�䣨GMT��1970��01��01��0��00��00�𵽼��㵱ʱ�ĺ�����->
    </body>
</html>
