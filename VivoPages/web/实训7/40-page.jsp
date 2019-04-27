<%-- 
    Document   : newshow
    Created on : 2017-8-2, 21:35:57
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>分页显示连续数据</title>
    </head>
    <body>
        <form align="center" action="" method="post">
            <table border="1" align="center" width="400" height="350">
                <tr bgcolor="gray">
                    <td align="center">数&nbsp;据</td>              
                </tr>
                <tr>
                    <td>
                        <%! double i=0; %>
                        <% i=Math.random();%>
                        <%=(int)(i*10000)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%! double i1=0; %>
                        <% i1=Math.random();%>
                        <%=(int)(i1*10000)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%! double i2=0; %>
                        <% i2=Math.random();%>
                        <%=(int)(i2*10000)%>
                    </td>
                </tr>
                <tr>                
                    <td>
                        <%! double i3=0; %>
                        <% i3=Math.random();%>
                        <%=(int)(i3*10000)%>
                    </td>
                </tr>
                <tr>                
                    <td>
                        <%! double i4=0; %>
                        <% i4=Math.random();%>
                        <%=(int)(i4*10000)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%! double i5=0; %>
                        <% i5=Math.random();%>
                        <%=(int)(i5*10000)%>
                    </td>
                </tr>
            </table><br>
            <%! int j=0,n=0; %>
            <% 
                j++;
                if(j>7)
                   j=1;
             %>
            <%  String str=request.getParameter("number");
                if(str==null)
                {
                    n=0;
                }
                else
                {
                    n=Integer.parseInt(str);
                }                
            %>
            <%
                if(n==j)                    
            %>
                第 <%=j%> 页&nbsp;<input type="text" name="number" size="10" align="center" value=<%=j%> >
           
           
            &nbsp;<input type="submit" value="翻页" name="page">
        </form>
    </body>
</html>
