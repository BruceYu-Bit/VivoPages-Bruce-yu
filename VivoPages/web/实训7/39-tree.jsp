<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>画树</title>
    </head>
    <body>
        <form>
        分级等级最大等级：<input type="text" name="var1">
        <input type="submit" value="确定" name="var2">
        </form>
        <%!int n=0,wid=125,hei=82;%>
        <%
            String s=request.getParameter("var1");
            if(s!=null)
            {
                n=Integer.parseInt(s);              
            }
            for(int i=0;i<n;i++)
            {
                out.print("<img src=tree.jpg width="+wid+"height="+hei+">");
                wid=wid+10;
                hei+=10;
            }
        %> 
    </body>
</html>
