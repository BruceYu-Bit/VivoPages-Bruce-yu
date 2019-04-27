<%-- 
    Document   : confirmlogin
    Created on : 2017-9-12, 0:15:09
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>登陆反馈信息</title>
    </head>
    <body style="background:url(re.jpg);width:100%;"> 
    <%--<>--%>
        <h2>您的登录信息如下：</h2>
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
                                out.println("你是合法用户，祝贺你!");
                                out.println("<input type=submit name=submit value=查询手机>");
                                break;
                            } else {
                                count = 1;
                                out.println("你不是合法用户，请重新确认!");
                                out.println("<A href=login.jsp>重新登录</A>");
                                break;
                            }
                        }
                    }
                    if (count == 0) {
                        out.println("你不是合法用户，请重新确认！");
                        out.println("<A href=login.jsp>重新登录</A>");
                    }
                    sql.close();
                    con.close();
                } catch (SQLException e) {
                    out.println("请输入正确的用户名和密码");
                    out.println("<A href=login.jsp>重新登录</A>");
                }
            }
        %>
        </form>
    </body>
</html>
