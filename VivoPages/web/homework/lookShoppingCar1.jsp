<%-- 
    Document   : searchMobile
    Created on : 2017-8-12, 19:39:07
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
    <body>
        <h2>�����빺�ﳵ����Ʒ���£�</h2>
        <form action="lookShoppingCar.jsp" method="post">
        <%           
            String user = request.getParameter("username");
            out.println("<tr><td><input type=hidden name=username value="+user+" ></td></tr>");
            String str = request.getParameter("idnumber");
            String str1 = request.getParameter("iddnumber");
            int id = Integer.parseInt(str);
            int idd = Integer.parseInt(str1);
            try{Class.forName("com.mysql.jdbc.Driver");}
            catch(Exception e){out.println(e);}
            Connection con;
            Statement sql;
            ResultSet rs;
            try {
                String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
                con = DriverManager.getConnection(uri);
                sql = con.createStatement();
                rs = sql.executeQuery("SELECT * FROM orderform");
                out.println("<table width=99% align=center border=1>");
                out.println("<tr>");
                out.println("<td align=center width=150>��ƷͼƬ</td>");
                out.println("<td align=center width=200>��Ʒ����</td>");
                out.println("<td align=center width=650>��Ʒ��Ϣ</td>"); 
                out.println("<td align=center width=180>��Ʒ�۸�</td>");
                out.println("<td align=center width=200>��Ʒ����<td>");
                out.println("</tr>");                 
                while (rs.next()) {               
                            String mobile_pic = rs.getString(1);
                            String mobile_name=rs.getString(2);
                            String mobile_mess = rs.getString(3);
                            String mobile_price = rs.getString(4);                            
                            String num = rs.getString(5); 
                            String username=rs.getString(6);
                            if(username.equals(user)){
                                out.println("<tr>");
                                out.println("<td align=center width=150><img src=" + mobile_pic + " width=100 height=100></td>");
                                out.println("<td align=center width=200>" + mobile_name + "</td>");
                                out.println("<td align=center width=650>" + mobile_mess + "</td>");
                                out.println("<td align=center width=180>" + mobile_price + "</td>");
                                out.println("<td align=center width=200><input type=text  width=100 value="+num+" name=number ></td>");                                
                                out.println("</tr>");
                            }
                }
                out.println("</table>"); 
            } catch (SQLException ee) {
                out.println(ee);
            }
            try {
                String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=&characterEncoding=gb2312";
                con = DriverManager.getConnection(uri);
                sql = con.createStatement();
                rs = sql.executeQuery("SELECT * FROM mobileform");
                int time = 0;
                int click = 1;
                while (rs.next()) {
                    int idnumber = rs.getInt(7);
                    if (idnumber == id) {
                        time++;
                        if (time == idd) {
                            String mobile_name = rs.getString(2);
                            String mobile_price = rs.getString(4);
                            String mobile_mess = rs.getString(5);
                            String mobile_pic = rs.getString(6);
                            out.println("<table width=99% align=center border=1>");
                            out.println("<tr>");
                            out.println("<td align=center width=150><img src=" + mobile_pic + " width=100 height=100></td>");
                            out.println("<td align=center width=200>" + mobile_name + "</td>");
                            out.println("<td align=center width=650>" + mobile_mess + "</td>");
                            out.println("<td align=center width=180>" + mobile_price + "</td>");
                            out.println("<td align=center width=200><input type=text  width=100 value=1 name=number ></td>");                            
                            out.println("</tr>");
                            out.println("</table>");
                            String mobile_num=request.getParameter("number");                            
                            if(mobile_num==null){
                                mobile_num="1";
                            }
                            String username=user;
                            String s = "INSERT INTO orderform VALUES('" + mobile_pic + "','" + mobile_name + "','" + mobile_mess + "','" + mobile_price + "','" + mobile_num + "','" + username + "')";
                            sql.executeUpdate(s);
                        }
                    }
                }
                con.close();
            } catch (SQLException ee) {                
            }
        %>   
        <table border="0" width="95%">
                <tr>
                    <td align="right"><input type="submit" name="submit" value="����������ɾ���͹������"></td>
                </tr>            
        </table>
        </form>
    </body>
</html>
