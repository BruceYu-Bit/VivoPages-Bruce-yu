<%-- 
    Document   : confirmlogin
    Created on : 2017-9-12, 0:15:09
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>��½������Ϣ</title>
    </head>
    <body style="background:url(re.jpg);width:100%;"> 
    <%--<>--%>
        <h2>���ĵ�¼��Ϣ���£�</h2>
        <form action="searchMobile.jsp" method="post">
        <%
            String id = request.getParameter("username");
            String secret = request.getParameter("usercode");
            out.println("<tr><td><input type=hidden name=id value="+id+" ></td></tr>");
            try {
                byte bb[] = id.getBytes("iso-8859-1");
                id = new String(bb);
            } catch (Exception exp) {
            }
            Connection con;
            Statement sql;
            ResultSet rs;
            String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                out.println(e);
            }
            con = DriverManager.getConnection(uri);
            sql = con.createStatement();
            rs = sql.executeQuery("SELECT * FROM login");
            if (id == null) {
                sql.close();
                con.close();
            } else {
                try {
                    int count = 0;
                    while (rs.next()) {
                        String name = rs.getString(1);
                        String code = rs.getString(2);
                        if (name.equals(id)) {
                            if (code.equals(secret)) {
                                count = 1;
                                out.println("���ǺϷ��û���ף����!");
                                out.println("<input type=submit name=submit value=��ѯ�ֻ�>");
                                break;
                            } else {
                                count = 1;
                                out.println("�㲻�ǺϷ��û���������ȷ��!");
                                out.println("<A href=login.jsp>���µ�¼</A>");
                                break;
                            }
                        }
                    }
                    if (count == 0) {
                        out.println("�㲻�ǺϷ��û���������ȷ�ϣ�");
                        out.println("<A href=login.jsp>���µ�¼</A>");
                    }
                    sql.close();
                    con.close();
                } catch (SQLException e) {
                    out.println("��������ȷ���û���������");
                    out.println("<A href=login.jsp>���µ�¼</A>");
                }
            }
        %>
        </form>
    </body>
</html>
