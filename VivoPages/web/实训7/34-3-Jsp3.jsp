<%@page contentType="text/html;charset=gb2312" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("gb2312");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>request对象</title>
    </head>
    <body bgcolor="#FFFFF0">
        <h2>7-34. 下面是三个JSP页面，写出request对象如何获取表单发送的数据。</h2>
        <br><h3>页面3</h3>
        <form action="" method="post">
            擅长<input type="checkbox" name="cb" value="ON1">VC++&nbsp;
            <input type="checkbox" name="cb" value="ON2">JAVA&nbsp;
            <input type="checkbox" name="cb" value="ON1">DELPHI&nbsp;
            <input type="checkbox" name="cb" value="ON1">VB&nbsp;
            <br>
            <input type="submit" name="qwe" value="进入">                        
        </form>
        <%
            if(request.getParameter("qwe")!=null)
            {
                for(int i=0;i<request.getParameterValues("cb").length;i++)
                {
                    out.println("cb"+i+":"+request.getParameterValues("cb")[i]+"<br>");
                }
                out.println(request.getParameter("qwe"));
            }
        %>
    </body>
</html>
