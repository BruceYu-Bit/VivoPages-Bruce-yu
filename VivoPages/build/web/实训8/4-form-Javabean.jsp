<%-- 
    Document   : 4-form-Javabean
    Created on : 2017-9-6, 16:59:16
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <title>��ʾ��</title>
    </head>
    <jsp:useBean id="production" class="user.Javabean" scope="page"/>
    <body>
        <form method="post" action="">
            <h2>8-4. ������������JavaBean���ձ����ֵ��Ȼ����ʾ����� </h2>
            <br>һ�����<br>
            <input type="checkbox" name="classify" value="���봦������CPU��">���봦������CPU��&nbsp;
            <input type="checkbox" name="classify" value="ͼ�δ�������GPU��">ͼ�δ�������GPU��&nbsp;
            <input type="checkbox" name="classify" value="оƬ��">оƬ��&nbsp;<br>
            <br>����������<br>
            <input type="checkbox" name="produce" value="AMD">AMD&nbsp;
            <input type="checkbox" name="produce" value="Intel">Intel&nbsp;
            <input type="checkbox" name="produce" value="ARCC">ARCC&nbsp;
            <br><br><input type="submit" name="submit" value="�ύ">&nbsp;
            <input type="reset" nmae="reset" value="��λ">
        </form>
        <jsp:setProperty name="production" property="userchoice" param="classify"/>
        <jsp:setProperty name="production" property="producer" param="produce"/>
        ��ѡ������ǣ�<jsp:getProperty name="production" property="userchoice"/><br>
        ��ѡ���������ǣ�<jsp:getProperty name="production" property="producer"/><br>
    </body>
</html>