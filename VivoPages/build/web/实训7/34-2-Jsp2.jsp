<%@page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
    <head>
        <title>request对象</title>
    </head>
    <body bgcolor="#FFFFF0">
        <h2>7-34. 下面是三个JSP页面，写出request对象如何获取表单发送的数据。</h2>
        <br><h3>页面2</h3>
        <form action="" method="post">
            用户名<input type="text" name="username">&nbsp;&nbsp;
            密 码<input type="password" name="userpass">&nbsp;&nbsp;
            <input type="submit" value="进入">
        </form>
        <%
            String username = request.getParameter("username");
            String code = request.getParameter("userpass");
            if (username != null) {
                try {
                    byte b[] = username.getBytes("ISO-8859-1");
                    username = new String(b);
                } catch (Exception exp) {
                }
                out.println("username:"+username);
            }
            if (code!= null) {
                try {
                    byte b[] = code.getBytes("ISO-8859-1");
                    code = new String(b);
                } catch (Exception exp) {
                }
                out.println("<br>");
                out.println("userpass:"+ code);
            }
            /*String str="";
            if(request.getParameter("username")!=null&&
               request.getParameter("userpass")!=null)
            {
                Enumeration enumt=request.getParameterNames();
                while(enumt.hasMoreElements())
                {
                    str=enumt.nextElement().toString();
                    out.println(str+":"+request.getParameter(str)+"<br>");
                }
            }*/
        %>
    </body>
</html>
