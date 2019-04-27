<%-- 
    Document   : lookMobile
    Created on : 2017-8-12, 19:38:45
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>查询手机</title>
    </head>
    <body style="background:url(view.PNG);width:100%;"> 
    <body ><font size="2">
        <h1 align="center" style="color:white;">请选择你想要浏览VIVO手机的种类</h1>
        <div align="center">
        <form action="lookMobile2.jsp" method="post">
        <!--<embed src="music1.mp3" width="0" height="0" autostart="true" loop="1" hidden="true">-->
        <%
            String username = request.getParameter("id");
            out.println("<tr><td><input type=hidden name=username value="+username+" ></td></tr>");
            Connection con;
            Statement sql;
            ResultSet rs;
            try{Class.forName("com.mysql.jdbc.Driver");}
            catch(Exception e){out.println(e);}
            try{
                String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
                con=DriverManager.getConnection(uri);
                sql=con.createStatement();
                rs=sql.executeQuery("SELECT * FROM mobileClassify");
                out.println("<form action=lookOrderForm.jsp method=post>");
                out.println("<select name='fenleiNumber' style = width:200px;height:40px;font-size:25px;>");
                while(rs.next()){
                   int id=rs.getInt(1);
                   String mobileCategory = rs.getString(2);
                   out.print("<option value="+id+">"+mobileCategory+"</option>");
                }
                out.println("</select>");
                out.print("<input type='submit' value='提交' style=width:70px;height=70px;font-size:25px;cursor:pointer;>");
                out.print("</form>");
                con.close();
            }
            catch(SQLException e)
            {
                out.println(e);
            }
        %>
        </form>
        </div></font>
    </body>
</html>
