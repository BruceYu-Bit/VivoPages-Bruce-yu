<%-- 
    Document   : 5-compoute
    Created on : 2017-9-7, 11:03:35
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>表单数据传送</title>
    </head>
    <body>
        <h2>8-5.完成下面表单，用Servlet接收表单域的值，然后显示结果。</h2>
        <form method="post" action="form">
            <br>一：类别<br>
            <input type="checkbox" name="classify1" value="中央处理器（CPU）">中央处理器（CPU）&nbsp;
            <input type="checkbox" name="classify2" value="图形处理器（GPU）">图形处理器（GPU）&nbsp;
            <input type="checkbox" name="classify3" value="芯片组">芯片组&nbsp;<br>
            <br>二：生产商<br>
            <input type="checkbox" name="produce1" value="AMD">AMD&nbsp;
            <input type="checkbox" name="produce2" value="Intel">Intel&nbsp;
            <input type="checkbox" name="produce3" value="ARCC">ARCC&nbsp;
            <br><br><input type="submit" name="submit" value="提交">&nbsp;
            <input type="reset" nmae="reset" value="复位">
        </form>
    </body>
</html>
