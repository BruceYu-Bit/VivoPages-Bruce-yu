package org.apache.jsp.homework;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/homework/head.txt");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=GB2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("    <head>");
      out.write("\r\n");
      out.write("  <div align=\"center\" class=\"tr\">\r\n");
      out.write("    <table  width=\"100%\" align=\"center\" border=\"0\" height=100>\r\n");
      out.write("          <tr height=20><td colspan=7 align=center><H2><p>\"Vivo\"智能手机销售网</p></H2></td></tr>\r\n");
      out.write("          <tr valign=\"center\"  height=25 >\r\n");
      out.write("              <td align=center ><A href=\"inputRegisterMess.jsp\" style=\"text-decoration:none\"><font size=\"5\">注册</font></A></td>\r\n");
      out.write("              <td align=center><A href=\"login.jsp\" style=\"text-decoration:none\"><font size=\"5\">登录</font></A></td>\r\n");
      out.write("              <td align=center><A href=\"searchMobile.jsp\" style=\"text-decoration:none\"><font size=\"5\">查询手机</font></A></td>\r\n");
      out.write("              <td align=center><A href=\"lookShoppingCar.jsp\" style=\"text-decoration:none\"><font size=\"5\">查看购物车</font></A></td>\r\n");
      out.write("              <td align=center><A href=\"lookAllOrderForm.jsp\" style=\"text-decoration:none\"><font size=\"5\">查看订单</font></A></td>\r\n");
      out.write("              <td align=center><A href=\"exitServlet.jsp\" style=\"text-decoration:none\"><font size=\"5\">退出</font></A></td>\r\n");
      out.write("              <td align=center><A href=\"index.jsp\" style=\"text-decoration:none\"><font size=\"5\">主页</font></A></td>\r\n");
      out.write("          </tr> \r\n");
      out.write("        </Font>\r\n");
      out.write("    </table>\r\n");
      out.write("</div>");
      out.write("\n");
      out.write("    <title>Vivo智能手机官网</title>  \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"mycss.css\">\n");
      out.write("    </head>\n");
      out.write("    <script>    \n");
      out.write("        window.onload=function(){    \n");
      out.write("            var oBox=document.getElementById('box');    \n");
      out.write("            var oUl=oBox.children[0];    \n");
      out.write("            var aLi=oUl.children;    \n");
      out.write("\n");
      out.write("            //复制一份内容 ，制作出无缝的效果   \n");
      out.write("            oUl.innerHTML+=oUl.innerHTML;    \n");
      out.write("            oUl.style.width=aLi.length*aLi[0].offsetWidth+'px';   \n");
      out.write("\n");
      out.write("            setInterval(function(){   //开定时器，这样就可以自己切换，无需人工干预。 \n");
      out.write("                var l=oUl.offsetLeft-10;  //图片切换，就是移动距离\n");
      out.write("                if(l<=-oUl.offsetWidth/2){    \n");
      out.write("                    l=0;    \n");
      out.write("                }    \n");
      out.write("                oUl.style.left=l+'px';    \n");
      out.write("            },150);    \n");
      out.write("        };    \n");
      out.write("    </script>     \n");
      out.write("    <body>        \n");
      out.write("    <center>\n");
      out.write("        <image src=\"sy.jpg\" width=\"100%\" ></image>\n");
      out.write("        <image src=\"sy11.jpg\" width=\"325\" height=\"200\"></image>\n");
      out.write("        <image src=\"sy44.jpg\" width=\"325\" height=\"200\"></image> \n");
      out.write("        <image src=\"sy33.jpg\" width=\"325\" height=\"200\"></image>\n");
      out.write("        <image src=\"sy22.jpg\" width=\"325\" height=\"200\"></image>\n");
      out.write("        <hr></hr>\n");
      out.write("        <div id=\"box\">    \n");
      out.write("            <ul>    \n");
      out.write("               <li><img src=\"vivo1.jpg\" width=\"300\" height=\"300\">Xplay6-1</li>    \n");
      out.write("               <li><img src=\"vivo2.jpg\" width=\"300\" height=\"300\">Xplay6-2</li>    \n");
      out.write("               <li><img src=\"vivo3.jpg\" width=\"300\" height=\"300\">X9s Plus</li>    \n");
      out.write("               <li><img src=\"vivo4.jpg\" width=\"300\" height=\"300\">X9</li>    \n");
      out.write("               <li><img src=\"vivo5.jpg\" width=\"300\" height=\"300\">X9s</li>\n");
      out.write("               <li><img src=\"vivo6.jpg\" width=\"300\" height=\"300\">X9 Plus</li>\n");
      out.write("               <li><img src=\"vivo7.jpg\" width=\"300\" height=\"300\">Y66</li>\n");
      out.write("               <li><img src=\"vivo8.jpg\" width=\"300\" height=\"300\">Y67A</li>\n");
      out.write("               <li><img src=\"vivo9.jpg\" width=\"300\" height=\"300\">Y67</li>\n");
      out.write("               <li><img src=\"vivo10.jpg\" width=\"300\" height=\"300\">Y55</li>\n");
      out.write("               <li><img src=\"vivo11.jpg\" width=\"300\" height=\"300\">Y51A</li>\n");
      out.write("               <li><img src=\"vivo12.jpg\" width=\"300\" height=\"300\">Y53</li>              \n");
      out.write("            </ul>    \n");
      out.write("        </div>\n");
      out.write("        微信扫描下方二维码，了解更多有关VIVO的更多信息！<br>\n");
      out.write("        <img src=\"view4.jpg\">\n");
      out.write("        <br><br>24小时全国客服在线：400-678-9688\n");
      out.write("        <br><br>Copyright 2011-2017 广东步步高电子工业有限公司 版权所有 保留一切权利粤B2-20080267 | 粤ICP备05100288号 \n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
