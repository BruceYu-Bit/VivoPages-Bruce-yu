<%-- 
    Document   : 38-compute
    Created on : 2017-9-6, 11:10:51
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>计算器程序</title><br>
</head>
<body>
    <h2>7-38.完成简单的计算器程序。要求：从表单输入两个实数，选择计算符，点击[等于]提交计算，显示计算结果。</h2>
    <br><h2>请在方框内输入数字：</h2>
    <%
        double result = 0, n = 0, n1;
        String s = request.getParameter("var1");
        String s1 = request.getParameter("var2");
        String s3 = request.getParameter("var3");
        if (s == null) {
            n = 0;
        } else {
            n = Double.parseDouble(s);
        }
        if (s1 == null) {
            n1 = 0;
        } else {
            n1 = Double.parseDouble(s1);
        }
        if (s3 == null) {
            s3 = "+";
        }

        if (s3.equals("+")) {
            result = n + n1;
        } else if (s3.equals("-")) {
            result = n - n1;
        } else if (s3.equals("*")) {
            result = n * n1;
        } else if (s3.equals("/")) {
            result = n / n1;
        }
        out.println("结果为："+result);
    %>
<body>
    <form method="get"action="" name="compute">
        <input type="text" name="var1"size="42" >
        <select name="var3" size="1" >
            <option value="+" selected>加</option>
            <option value="-" >减</option>
            <option value="*" >乘</option>
            <option value="/" >除</option>
        </select>
        <input type="text" name="var2"size="42" >
        <input type="submit" value="等于">
    </form>
</body>
</html>
