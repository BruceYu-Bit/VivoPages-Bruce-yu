<%-- 
    Document   : 4-form-Javabean
    Created on : 2017-9-6, 16:59:16
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>显示表单</title>
    </head>
    <jsp:useBean id="production" class="user.Javabean" scope="page"/>
    <body>
        <form method="post" action="">
            <h2>8-4. 完成下面表单，用JavaBean接收表单域的值，然后显示结果。 </h2>
            <br>一：类别<br>
            <input type="checkbox" name="classify" value="中央处理器（CPU）">中央处理器（CPU）&nbsp;
            <input type="checkbox" name="classify" value="图形处理器（GPU）">图形处理器（GPU）&nbsp;
            <input type="checkbox" name="classify" value="芯片组">芯片组&nbsp;<br>
            <br>二：生产商<br>
            <input type="checkbox" name="produce" value="AMD">AMD&nbsp;
            <input type="checkbox" name="produce" value="Intel">Intel&nbsp;
            <input type="checkbox" name="produce" value="ARCC">ARCC&nbsp;
            <br><br><input type="submit" name="submit" value="提交">&nbsp;
            <input type="reset" nmae="reset" value="复位">
        </form>
        <jsp:setProperty name="production" property="userchoice" param="classify"/>
        <jsp:setProperty name="production" property="producer" param="produce"/>
        您选的类别是：<jsp:getProperty name="production" property="userchoice"/><br>
        您选的生产商是：<jsp:getProperty name="production" property="producer"/><br>
    </body>
</html>