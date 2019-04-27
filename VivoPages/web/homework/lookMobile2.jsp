<%--
    Document   : lookMobile2
    Created on : 2017-9-5, 17:01:27
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>浏览手机</title>
    </head>
    <body style="background: url(bgl.jpg)">
        <form action="lookDetail.jsp"method="post"> 
            <table border="0" align=left>
                <%
                    String username = request.getParameter("username");
                    out.println("<tr><td><input type=hidden name=username value="+username+" ></td></tr>");
                    int time = 0;
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
                                String mobile_pic = rs.getString(6);
                                String mobile_version=rs.getString(1);
                                if (time%5==0) {
                                    out.println("<tr>");
                                    out.println("<td width=250 height=450 align=center><img src=" + mobile_pic + " width=200 height=300 ><br>"+mobile_version+"<br><br><input type=submit value=查看详情 align=center name="+time+"></td>");
                                } else {
                                    out.println("<td width=250 height=450 align=center><img src=" + mobile_pic + " width=200 height=300 ><br>"+mobile_version+"<br><br><input type=submit value=查看详情 align=center name="+time+"></td>");
                                }
                            }
                        }
                        con.close();
                    } catch (SQLException e) {
                        out.println(e);
                    }
                    out.println("<tr><td colspan=6 align=right>全部记录数：" + time + "</td></tr>");
                    out.println("<tr><td><input type=hidden name=id value="+idd+" ></td></tr>");
                %>
                <%
            if(idd==1){
                out.print("<h2 align=center>当前显示的内容是Xplay系列</h2><br>");
            }
            else if(idd==2){
                out.print("<h2 align=center>当前显示的内容是X系列</h2><br>");
            }
            else if(idd==3){
                out.print("<h2 align=center>当前显示的内容是Y系列</h2><br>");
            }
        %>
            </table>
        </form>
    </body>
</html>
