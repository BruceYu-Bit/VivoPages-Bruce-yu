
<%-- 
    Document   : lookShoppingCar
    Created on : 2017-9-9, 22:37:52
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>�鿴���ﳵ</title>
    </head>
    <body style="background:url(x201.jpg);width:100%;color: white;"> 
    <body >
        <form action="" method="post">
            <h2>�����빺�ﳵ����Ʒ���£�</h2>
            <h3>(��ʾ��˫��ɾ�����ɽ���ɾ����ɾ���Ὣͬ����Ʒȫ��ɾ��)</h3>
            <%
                String user = request.getParameter("username");
                out.println("<tr><td><input type= name=username value="+user+" ></td></tr>");      
                if(user==null){
                    out.println("���ȵ�¼��");
                }
                out.println("<table width=99% align=center border=1>");
                out.println("<tr>");
                out.println("<td align=center width=150>��ƷͼƬ</td>");
                out.println("<td align=center width=200>��Ʒ����</td>");
                out.println("<td align=center width=650>��Ʒ��Ϣ</td>");
                out.println("<td align=center width=180>��Ʒ�۸�</td>");
                out.println("<td align=center width=200>��Ʒ����</td>");
                out.println("<td align=center width=100>����</td>");
                out.println("<td align=center width=200>��������<td>");
                out.println("</tr>");
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (Exception e) {
                    out.println(e);
                }
                Connection con;
                Statement sql;
                ResultSet rs;
                int time = 0;
                try {
                    String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
                    con = DriverManager.getConnection(uri);
                    sql = con.createStatement();
                    rs = sql.executeQuery("SELECT * FROM orderform");
                    while (rs.next()) {
                        time++;
                        String mobile_pic = rs.getString(1);
                        String mobile_name = rs.getString(2);
                        String mobile_mess = rs.getString(3);
                        String mobile_price = rs.getString(4);
                        String num = rs.getString(5);
                        String username=rs.getString(6);
                        if (username.equals(user)) {
                            out.println("<tr>");
                            out.println("<td align=center width=150><img src=" + mobile_pic + " width=100 height=100></td>");
                            out.println("<td align=center width=200>" + mobile_name + "</td>");
                            out.println("<td align=center width=650>" + mobile_mess + "</td>");
                            out.println("<td align=center width=180>" + mobile_price + "</td>");
                            out.println("<td align=center width=200><input type=text  width=100 value=" + num + " name=" + (time + 2) + " ></td>");
                            out.println("<td align=center width=100><input type=submit name=" + time + " value=ɾ��></td>");
                            out.println("<td align=center><input type=submit name=" + (time + 1) + " value=ȷ�Ϲ���></td>");
                            out.println("</tr>");
                        }
                        time += 2;
                    }
                } catch (SQLException ee) {
                    out.println(ee);
                }
                int n = 0, i = 0;
                int flag = 0;
                for (i = 1; i <= time; i++) {
                    String str1 = i + "";
                    String str = request.getParameter(str1);
                    if (str != null) {
                        flag = 1;
                        break;
                    }
                    i += 2;
                }
                if (flag == 1) {
                    try {
                        String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=&characterEncoding=gb2312";
                        con = DriverManager.getConnection(uri);
                        sql = con.createStatement();
                        rs = sql.executeQuery("SELECT * FROM orderform");
                        while (rs.next()) {
                            n++;
                            if (n == (i / 2 + 1)) {
                                String mobile_version = rs.getString(2);
                                sql.executeUpdate("DELETE FROM orderform where name ='" + mobile_version + "' ");   
                            }
                        }
                    } catch (SQLException ee) {
                    }
                }
                out.println("</table>");
            %>             
            <br>
            <table border="0" width="95%">
                <tr>
                    <td align="right"><A href="index.jsp" align="right">������ҳ</A></td>
                </tr>            
            </table>
        </form>
        <form action="lookOrderForm.jsp" method="post">
            <%
                String mobile_pic = "";
                String mobile_name = "";
                String mobile_pri = "";
                String mobile_num = "";
                String username = "";
                String address = "";
                String usertel = "";
                int temp = 0;
                if (flag == 0) {
                    for (i = 2; i <= time; i++) {
                        String str1 = i + "";
                        String str = request.getParameter(str1);
                        if (str != null) {
                            try {
                                String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=&characterEncoding=gb2312";
                                con = DriverManager.getConnection(uri);
                                sql = con.createStatement();
                                rs = sql.executeQuery("SELECT * FROM orderform");
                                while (rs.next()) {
                                    temp++;
                                    if (temp == (i / 3 + 1)) {
                                        mobile_pic = rs.getString(1);
                                        mobile_name = rs.getString(2);
                                        mobile_pri = rs.getString(4);
                                        mobile_num = rs.getString(5);
                                        username = rs.getString(6);
                                    }
                                }
                                rs = sql.executeQuery("SELECT * FROM user");
                                while (rs.next()) {
                                    String add = rs.getString(1);
                                    if (add.equals(username)) {
                                        address = rs.getString(4);
                                        usertel = rs.getString(3);
                                    }
                                }
                            String s = "INSERT INTO confirm VALUES('" + mobile_pic + "','" + mobile_name + "','" + mobile_pri + "','" + mobile_num + "','" + username + "','" + address + "','" + usertel + "')";
                            sql.executeUpdate(s);
                            } catch (SQLException ee) {
                            }                            
                            response.sendRedirect("lookOrderForm.jsp");
                            break;
                        }
                        i += 2;
                    }
                }
            %>
        </form>
    </body>
</html>
