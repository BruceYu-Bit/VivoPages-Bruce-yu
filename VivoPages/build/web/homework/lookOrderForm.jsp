<%-- 
    Document   : lookOrderForm
    Created on : 2017-8-12, 19:39:57
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查看订单</title>
    </head>
    <body style="background:url(x204.jpg);width:100%;"> 
    <body>
        <h2>以下是您的订单，请仔细核对后提交确认！</h2>
        <%
           try{Class.forName("com.mysql.jdbc.Driver");}
            catch(Exception e){out.println(e);}
            Connection con;
            Statement sql;
            ResultSet rs;
            try {
                String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
                con = DriverManager.getConnection(uri);
                sql = con.createStatement();
                rs = sql.executeQuery("SELECT * FROM confirm");
                out.println("<table width=99% align=center border=1>");
                out.println("<tr>");
                out.println("<td align=center width=150>商品图片</td>");
                out.println("<td align=center width=200>商品名称</td>");
                out.println("<td align=center width=650>商品价格</td>");                
                out.println("<td align=center width=200>商品数量</td>");
                out.println("<td align=center width=100>用户名</td>"); 
                out.println("<td align=center width=180>邮寄地址</td>");
                out.println("<td align=center width=200>联系电话</td>");
                out.println("</tr>");         
                String mobile_pic="" ;
                String mobile_name="";
                String mobile_num="";
                String mobile_price="";                            
                String username="";  
                String add="";
                String tel="";
                while (rs.next()) {               
                            mobile_pic = rs.getString(1);
                            mobile_name=rs.getString(2);
                            mobile_num = rs.getString(4);
                            mobile_price = rs.getString(3);                            
                            username = rs.getString(5);  
                            add=rs.getString(6);
                            tel=rs.getString(7);                            
                }               
                out.println("<tr>");
                out.println("<td align=center width=150><img src=" + mobile_pic + " width=100 height=100></td>");
                out.println("<td align=center width=200>" + mobile_name + "</td>");
                out.println("<td align=center width=650>" + mobile_price + "</td>");
                out.println("<td align=center width=200>" + mobile_num + "</td>");
                out.println("<td align=center width=100>"+username+"</td>");
                out.println("<td align=center width=180>"+add+"</td>");
                out.println("<td align=center width=300>"+tel+"</td>");
                out.println("</tr>");                           
                out.println("</table>"); 
                con.close();
            } catch (SQLException ee) {
                out.println(ee);
            }                  
        %>
        <form action="confirm.jsp" method="post">
            <table width="99%" border="0">
                <tr align="center">
                    <td><input type="submit" name="order" value="确认提交"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
