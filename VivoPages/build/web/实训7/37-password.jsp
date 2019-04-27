<%-- 
    Document   : newpassword
    Created on : 2017-8-1, 10:11:15
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>密码验证</title>
    </head>
    <body bgcolor="cyan">
        <h2>7-37. 完成简单的登陆程序。要求：从表单输入用户名和密码，提交后验证用户名和密码。如果验证成功提示“你是合法用户，祝贺你！”，如果验证不成功提示“你不是合法用户，请重新确认！”。</h2>
        <form align="center" action="" method="post" name="biaodan">
            <br><br><br><br><br>用户登录界面<br><br>
            请输入用户名：<input type="text" name="username" maxlength="30"><br><br>
            请输入密码：&nbsp;<input type="password" name="password"  maxlength="30"><br><br>
            <input type="submit" name="submi" value="登录" >
        </form>
       <%
            String id = request.getParameter("username");
            String secret = request.getParameter("password");
            try {
                byte bb[] = id.getBytes("iso-8859-1");
                id = new String(bb);
            } catch (Exception exp) {
            }
            Connection con;
            Statement sql;
            ResultSet rs;
            String uri = "jdbc:mysql://127.0.0.1/password?user=root&password=&characterEncoding=gb2312";
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                out.println(e);
            }
            con = DriverManager.getConnection(uri);
            sql = con.createStatement();
            rs = sql.executeQuery("SELECT * FROM pass");
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
                                break;
                            } else {
                                count = 1;
                                out.println("你不是合法用户，请重新确认!");
                                break;
                            }
                        }
                    }
                    if (count == 0) {
                        out.println("你不是合法用户，请重新确认！");
                    }
                    sql.close();
                    con.close();
                } catch (SQLException e) {
                    out.println("请输入正确的用户名和密码");
                }
            }
        %>
    </body>   
</html>
