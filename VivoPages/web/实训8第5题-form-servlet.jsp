<%-- 
    Document   : 5-compoute
    Created on : 2017-9-7, 11:03:35
    Author     : Administrator
--%>

<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>�����ݴ���</title>
    </head>
    <body>
        <h2>8-5.������������Servlet���ձ����ֵ��Ȼ����ʾ�����</h2>
        <form method="post" action="form">
            <br>һ�����<br>
            <input type="checkbox" name="classify1" value="���봦������CPU��">���봦������CPU��&nbsp;
            <input type="checkbox" name="classify2" value="ͼ�δ�������GPU��">ͼ�δ�������GPU��&nbsp;
            <input type="checkbox" name="classify3" value="оƬ��">оƬ��&nbsp;<br>
            <br>����������<br>
            <input type="checkbox" name="produce1" value="AMD">AMD&nbsp;
            <input type="checkbox" name="produce2" value="Intel">Intel&nbsp;
            <input type="checkbox" name="produce3" value="ARCC">ARCC&nbsp;
            <br><br><input type="submit" name="submit" value="�ύ">&nbsp;
            <input type="reset" nmae="reset" value="��λ">
        </form>
    </body>
</html>
