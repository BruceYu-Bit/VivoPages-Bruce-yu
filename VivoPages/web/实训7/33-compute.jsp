<%-- 
    Document   : compute
    Created on : 2017-7-18, 23:09:34
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>简单的计算机</title>
    </head>
    <%
       double result=0,n=0,n1;
       String s=request.getParameter("var1");
       String s1=request.getParameter("var2");
       String s3=request.getParameter("var3"); 
       if(s==null){
           n=0;
       }     
       else{
           n=Double.parseDouble(s);
       }        
       if(s1==null){
           n1=0;
       }     
       else{
            n1=Double.parseDouble(s1);
       }   
       if(s3==null){
           s3="+";
       }   
       
       if(s3.equals("+")){
           result=n+n1;
       }
       else if(s3.equals("-")){
           result=n-n1;
       }
       else if(s3.equals("*")){
           result=n*n1;
       }
       else if(s3.equals("/")){
           result=n/n1;
       }
       
    %>
    <hr></hr>
    计算结果：<%=n%><%=s3%><%=n1%>=<%=result%>
    <hr></hr>
    <body>
       <form method="get"action="" name="compute">
       <table align="center" width="400" height="200" border="1">
            <tr>
               <td align="center" colspan="2">我的计算器</td> 
            </tr>
            <tr>
                <td>第一个参数:</td>
                <td align="middle" height="30"><input type="text" name="var1"size="42" ></td>
            </tr>
            <tr>
                <td height="30">运算符：</td>
                <td align="left" height="30">&nbsp;
                    <select name="var3" size="1" >
                        <option value="+" selected>+</option>
                        <option value="-" >-</option>
                        <option value="*" >*</option>
                        <option value="/" >/</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>第二个参数:</td>
                <td align="middle" height="30"><input type="text" name="var2"size="42" ></td>
            </tr>
            <tr>
                <td align="left" colspan="2" height="30">&nbsp;<input type="submit" value="计算"></td> 
            </tr>
        </table>
       </form>
    </body>
</html>
