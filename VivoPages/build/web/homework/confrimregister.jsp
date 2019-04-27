<%-- 
    Document   : confrimregister
    Created on : 2017-9-11, 22:22:06
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册反馈信息</title>
    </head>
    <body style="background:url(re.jpg);width:100%;"> 
    <body>
        <%
            String admin, code1="",code2="", tel, addr, nickname;
            admin = request.getParameter("logname");
            code1 = request.getParameter("password");
            code2 = request.getParameter("again-password");
            tel = request.getParameter("phone");
            addr = request.getParameter("address");
            nickname = request.getParameter("realname");            
            if(admin.equals("")){
                out.println("<h1><font color=red>用户名不能为空</font></h1>");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else if(code1.equals("")){
                out.println("<h1><font color=red>密码不能为空！");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else if(!code1.equals(code2)){
                out.println(code1);
                out.println(code2);
                out.println("<h1><font color=red>两次输入的密码不相同，请重新输入！");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else if(tel.equals("")){
                out.println("<h1><font color=red>联系方式不能为空！");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else if(!(tel.length()==11)){
                out.println(tel);
                out.println("<h1><font color=red>您输入的联系方式有误，请输入正确的手机号！");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else if(addr.equals("")){
                out.println("<h1><font color=red>地址不能为空");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else if(nickname.equals("")){
                out.println("<h1><font color=red>真实姓名不可为空！");
                out.println(" <A href = inputRegisterMess.jsp style=font-size:20px;>重新注册</A>");
            }
            else{
                    out.println("<h1><font color=red>恭喜您！注册成功！");
                    out.println(" <A href = index.jsp style=font-size:20px;>返回主页</A>");
                    out.println(" <A href = login.jsp style=font-size:20px;>去登录</A>");
                    try {
                        byte bb[] = admin.getBytes("iso-8859-1");
                        admin = new String(bb);
                        byte bb1[] = addr.getBytes("iso-8859-1");
                        addr = new String(bb1);
                        byte bb2[] = nickname.getBytes("iso-8859-1");
                        nickname = new String(bb2);
                    } catch (Exception exp) {
                    }
                    Connection con;
                    Statement sql;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                    } catch (ClassNotFoundException e) {
                        out.println(e);
                    }
                    try {
                        String uri = "jdbc:mysql://127.0.0.1/mobile?useUnicode=true&characterEncoding=UTF-8&user=root&password=";
                        con = DriverManager.getConnection(uri);
                        sql = con.createStatement();
                        String s = "INSERT INTO user VALUES('" + admin + "','" + code1 + "','" + tel + "','" + addr + "','" + nickname + "')";
                        if (admin == null) {
                            sql.close();
                            con.close();
                        } else if (!code1.equals(code2)) {
                            out.println("您两次输入的密码不同，注册失败！");
                            sql.close();
                            con.close();
                        } else {
                            sql.executeUpdate(s);
                            sql.close();
                            con.close();
                        }
                    } catch (SQLException e) {
                        out.println(e);
                    }
            }
        %>  
    </body>
</html>
