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
        <title>������֤</title>
    </head>
    <body bgcolor="cyan">
        <h2>7-37. ��ɼ򵥵ĵ�½����Ҫ�󣺴ӱ������û��������룬�ύ����֤�û��������롣�����֤�ɹ���ʾ�����ǺϷ��û���ף���㣡���������֤���ɹ���ʾ���㲻�ǺϷ��û���������ȷ�ϣ�����</h2>
        <form align="center" action="" method="post" name="biaodan">
            <br><br><br><br><br>�û���¼����<br><br>
            �������û�����<input type="text" name="username" maxlength="30"><br><br>
            ���������룺&nbsp;<input type="password" name="password"  maxlength="30"><br><br>
            <input type="submit" name="submi" value="��¼" >
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
                                out.println("���ǺϷ��û���ף����!");
                                break;
                            } else {
                                count = 1;
                                out.println("�㲻�ǺϷ��û���������ȷ��!");
                                break;
                            }
                        }
                    }
                    if (count == 0) {
                        out.println("�㲻�ǺϷ��û���������ȷ�ϣ�");
                    }
                    sql.close();
                    con.close();
                } catch (SQLException e) {
                    out.println("��������ȷ���û���������");
                }
            }
        %>
    </body>   
</html>
