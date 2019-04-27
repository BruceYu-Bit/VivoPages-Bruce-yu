<%-- 
    Document   : lookShoppingCar2
    Created on : 2017-9-10, 20:15:37
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>查看购物车</title>
    </head>
    <body>
        <h2>您加入购物车的物品如下：</h2>
        <form action="lookShoppingCar.jsp" method="post">
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
                rs = sql.executeQuery("SELECT * FROM orderform");
                out.println("<table width=99% align=center border=1>");
                out.println("<tr>");
                out.println("<td align=center width=150>商品图片</td>");
                out.println("<td align=center width=200>商品名称</td>");
                out.println("<td align=center width=650>商品信息</td>"); 
                out.println("<td align=center width=180>商品价格</td>");
                out.println("<td align=center width=200>商品数量</td>");
                out.println("<td align=center width=100>操作</td>");
                out.println("<td align=center width=200>立即购买<td>");
                out.println("</tr>");                 
                while (rs.next()) {               
                            String mobile_pic = rs.getString(1);
                            String mobile_name=rs.getString(2);
                            String mobile_mess = rs.getString(3);
                            String mobile_price = rs.getString(4);                            
                            String num = rs.getString(5);    
                            if(mobile_pic!=null){
                                out.println("<tr>");
                                out.println("<td align=center width=150><img src=" + mobile_pic + " width=100 height=100></td>");
                                out.println("<td align=center width=200>" + mobile_name + "</td>");
                                out.println("<td align=center width=650>" + mobile_mess + "</td>");
                                out.println("<td align=center width=180>" + mobile_price + "</td>");
                                out.println("<td align=center width=200><input type=text  width=100 value="+num+" name=number ></td>");
                                out.println("<td align=center width=100><input type=submit name=delete value=删除></td>");
                                out.println("<td align=center><input type=submit name=submi value=确认购买></td>");
                                out.println("</tr>");
                            }
                }
                out.println("</table>"); 
                con.close();
            } catch (SQLException ee) {
                out.println(ee);
            }
        %>
        </form>
    </body>
</html>
