<%-- 
    Document   : lookShoppingCar
    Created on : 2017-8-12, 19:39:34
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>浏览手机</title>
    </head>
    <body bgcolor="white" >
        <h2 align="center">当前显示的内容是</h2><br>
        <form action="lookShoppingCar.jsp"method="post"> 
        <table border="2" align=center width="99%">
            <tr height="60">
                <th>手机标识号</th>
                <th>手机名称</th>
                <th>手机制造商</th>
                <th>手机价格</th>
                <th>查看详情</th>
                <td align="center"><font size="2" color="blue">添加到购物车</font></td>
            </tr> 
            <%
                String username = request.getParameter("username");
                out.println("<tr><td><input type=hidden name=username value="+username+" ></td></tr>");
                out.println(username);
                int time=0;
                String idNumber = request.getParameter("fenleiNumber");
                int idd = Integer.parseInt(idNumber);
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (Exception e) {
                }
                Connection con;
                Statement sql;
                ResultSet rs;
                try {
                    String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
                    con = DriverManager.getConnection(uri);
                    sql = con.createStatement();
                    rs = sql.executeQuery("SELECT * FROM mobileform");
                    while (rs.next()) {
                        int id = rs.getInt(7);
                        if (id == idd) {
                            time++;
                            String mobile_version = rs.getString(1);
                            String mobile_name = rs.getString(2);
                            String mobile_made = rs.getString(3);
                            String mobile_pri = rs.getString(4);
                            out.println("<tr>");
                            out.println("<td>" + mobile_version + "</td>");
                            out.println("<td>" + mobile_name + "</td>");
                            out.println("<td>" + mobile_made + "</td>");
                            out.println("<td>" + mobile_pri + "</td>");
                            out.println("<td><input type=submit value=查看细节>" + "</td>");
                            out.println("<td><input type=submit value=加入购物车>" + "</td>");
                            out.println("</tr>");
                        }
                    }
                    con.close();
                } catch (SQLException e) {
                    out.println(e);
                }
                out.println("<tr><td colspan=6 align=right>全部记录数：" +time+"</td></tr>");
            %>
        </table>
        </form>
    </body>
</html>
