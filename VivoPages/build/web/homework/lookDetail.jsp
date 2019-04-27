<%-- 
    Document   : lookDetail
    Created on : 2017-9-5, 18:21:38
    Author     : Administrator
--%>
<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>查看详情</title>
    </head>
    <body bgcolor="black" style="color: white;">
        <h2 >您所查看的手机信息如下:</h2>
        <hr>
        <%
            out.println("<form action=lookShoppingCar1.jsp method=post>");
            String username = request.getParameter("username");
            out.println("<tr><td><input type=hidden name=username value="+username+" ></td></tr>");
            String str = request.getParameter("id");
            int n = Integer.parseInt(str);
            out.println("<input type=hidden name = idnumber value="+n+">");
            int nn = 0, i = 0;
            if (n == 1) {
                nn = 2;
            } else if (n == 2) {
                nn = 4;
            } else if (n == 3) {
                nn = 6;
            }
            for (i = 1; i <= nn; i++) {
                String str2 = i + "";
                String str1 = request.getParameter(str2);
                if (str1 != null) {
                    break;
                }
            }
            out.println("<input type=hidden name = iddnumber value="+i+">");
            Connection con;
            Statement sql;
            ResultSet rs;
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                out.println(e);
            }
            try {
                String uri = "jdbc:mysql://127.0.0.1/mobile?" + "user=root&password=root&characterEncoding=gb2312";
                con = DriverManager.getConnection(uri);
                sql = con.createStatement();
                rs = sql.executeQuery("SELECT * FROM mobileform");
                int time = 0;
                while (rs.next()) {
                    int id = rs.getInt(7);
                    if (id == n) {
                        time++;
                        if (time == i) {
                            String mobile_version = rs.getString(1);
                            String mobile_name = rs.getString(2);
                            String mobile_made = rs.getString(3);
                            String mobile_price = rs.getString(4);
                            String mobile_mess = rs.getString(5);
                            String mobile_pic = rs.getString(6);                                                       
                            if(mobile_version.equals("X20")){
                                response.sendRedirect("vivo20.jsp");
                            }
                            else if(mobile_version.equals("X9")){                                
                                out.println("<embed src=vivoX9s.mp4 width=550 height=300 autostart=false align=left ></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;vivo X9是vivo全新拍照旗舰智能手机，于2016年11月1日官方曝光。"
                                        + "并于2016年11月16日在北京水立方正式发布。<br>&nbsp;&nbsp;vivo X9主要特点为搭载了两个前置摄像头，一个2000万索尼定制IMX376传感器摄像头，"
                                        + "一个800万的专业级虚化摄像头，协同拍照可以拍摄出大光圈效果的人像照片。vivo X9搭载了高通骁龙八核处理器（2.0GHz），采用了5.5寸的1080P屏幕，"
                                        + "4G RAM和64G的ROM组合，配备3040mAh的电池，并支持双引擎闪充。</h2>");
                                out.println("<img src=vivo91.jpg >"); 
                                out.println("<img src=vivo92.jpg >");
                            }
                            else if(mobile_version.equals("X9s")){
                                out.println("<h2>&nbsp;&nbsp;vivo X9s是vivo全新拍照旗舰智能手机，于2016年11月1日官方曝光。"
                                        + "并于2016年11月16日在北京水立方正式发布。<br>&nbsp;&nbsp;vivo X9s主要特点为搭载了两个前置摄像头，一个2000万索尼定制IMX376传感器摄像头，"
                                        + "一个800万的专业级虚化摄像头，协同拍照可以拍摄出大光圈效果的人像照片。vivo X9搭载了高通骁龙八核处理器（2.0GHz），采用了5.5寸的1080P屏幕，"
                                        + "4G RAM和64G的ROM组合，配备3040mAh的电池，并支持双引擎闪充。</h2>");
                                out.println("<img src=vivo91.jpg >"); 
                                out.println("<img src=xplay64.jpg >");
                                out.println("<img src=vivo92.jpg >");
                                out.println("<img src=xplay67.jpg >");
                                out.println("<img src=xplay68.jpg >");
                            }
                            else  if(mobile_version.equals("X9 Plus")){
                                out.println("<embed src=vivoX9Plus.mp4 width=550 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>1、vivo X9Plus采用5.88英寸 IPS显示屏，分辨率为1920*1080。<br>"
                                        + "2、1600W后置摄像头；前置2000W主摄像头+800W副摄像头，虚化人像镜头效果，配合全新柔光灯，展现真实美感和个人气质。<br>"
                                        + "3、采用高通骁龙8976Pro 八核1.95GHz 64位处理器。<br>"
                                        + "4、电池容量为4000mAh。</h2>");
                                out.println("<img src=vivo95.jpg >");
                                out.println("<img src=vivo93.jpg >"); 
                                out.println("<img src=vivo94.jpg >");                                 
                            }
                            else  if(mobile_version.equals("X9s Plus")){
                                out.println("<embed src=vivoX9sPlus.mp4 width=500 height=300 autostart=false align=left></embed>");
                                out.println("<h2>&nbsp;&nbsp;X9s Plus采用铝合金一体式设计，搭载了全新穹顶式U形天线，金属占比进一步提升。机身采用第四代镜面喷砂工艺，10纳米级极细205锆砂喷涂，手感更细滑。中框与背部一体成型，整机全部自然弧度圆润过渡，握持感更佳。<br>"
                                        + "&nbsp;&nbsp;vivoX9sPlus配备了全面升级的前置拍照方案，前置2000W专业传感器，搭配专业虚化镜头和全面升级的柔光灯和美颜算法，在拍照的时候主摄像头与副摄像头协作分工，可以实现精准自然的自拍虚化效果，区别于其他通过软件算法带来的虚化效果，"
                                        + "X9s Plus的双摄虚化可以让自拍的人物主体线条锐利突出，层次分明，而主体外的背景部分则被细腻虚化，实现媲美大光圈的人像拍摄效果。<br></h2>");
                                out.println("<img src=vivo91.jpg >");
                                out.println("<img src=x91.jpg >"); 
                                out.println("<img src=x92.jpg >");
                                out.println("<img src=x93.jpg >");
                            }
                            else  if(mobile_version.equals("Xplay6-1")){
                                out.println("<embed src=vivoXplay6.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;Xplay系列一直是vivo品牌的旗舰系列，vivo Xplay6是2016年11月16日发布的旗舰手机。<br>"
                                        + "&nbsp;&nbsp;vivo Xplay6搭载了高通骁龙820系列处理器，配备2K分辨率曲面屏幕，6G运存，配备4080mAh的电池，并支持双引擎闪充。<br>"
                                        + "&nbsp;&nbsp;外观上，vivo Xplay6采用新一代5.46寸2K分辨率Super AMOLED曲面屏、U轨结构设计、四弧面玻璃设计，直观感觉较前作更加圆润。<br>"
                                        + "&nbsp;&nbsp;拍照上，vivo Xplay6配备后置双摄像头，主摄像头采用索尼全新一代IMX362传感器，1200万全像素双核对焦，2400万个感光单元，搭配500万景深摄像头，协同拍照实现单反大光圈效果。</h2>");
                                out.println("<img src=xplay61.jpg >");
                                out.println("<img src=xplay62.jpg >"); 
                                out.println("<img src=xplay63.jpg >");
                                out.println("<img src=xplay64.jpg >");
                            }
                            else  if(mobile_version.equals("Xplay6-2")){
                                out.println("<embed src=vivoXplay6-2.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;Xplay系列一直是vivo品牌的旗舰系列，vivo Xplay6是2016年11月16日发布的旗舰手机。<br>"
                                        + "&nbsp;&nbsp;vivo Xplay6搭载了高通骁龙820系列处理器，配备2K分辨率曲面屏幕，6G运存，配备4080mAh的电池，并支持双引擎闪充。<br>"
                                        + "&nbsp;&nbsp;外观上，vivo Xplay6采用新一代5.46寸2K分辨率Super AMOLED曲面屏、U轨结构设计、四弧面玻璃设计，直观感觉较前作更加圆润。<br>"
                                        + "&nbsp;&nbsp;拍照上，vivo Xplay6配备后置双摄像头，主摄像头采用索尼全新一代IMX362传感器，1200万全像素双核对焦，2400万个感光单元，搭配500万景深摄像头，协同拍照实现单反大光圈效果。</h2>");
                                out.println("<img src=xplay68.jpg >");
                                out.println("<img src=xplay65.jpg >"); 
                                out.println("<img src=xplay66.jpg >");
                                out.println("<img src=xplay67.jpg >");
                            }
                            else  if(mobile_version.equals("Y51A")){
                                out.println("<embed src=vivoY51A.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;屏幕尺寸5.0英寸，分辨率960x540，CPU高通骁龙425(MSM8917)。</h2>");
                                out.println("<img src=y51a2.jpg >");
                            }
                             else  if(mobile_version.equals("Y67")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;vivo Y67是vivo智能手机于2016年11月发布的一款拍照手机，搭载了一个5.5英寸的720p屏幕，前置搭载1600万像素的摄像头和自拍柔光灯。<br>"
                                        + "&nbsp;&nbsp;vivo Y67另一处值得关注的地方是拍照，它是Y系列里第一款装备了1600万像素前置自摄像头的机型，并如X7那样搭配了美颜柔光灯，旨在给用户更出色的自拍体验，后置主摄像头像素为1300万。</h2>");
                                out.println("<img src=y671.jpg >");
                            }
                             else  if(mobile_version.equals("Y67A")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;vivo Y67A是vivo智能手机于2016年11月发布的一款拍照手机，搭载了一个5.5英寸的720p屏幕，前置搭载1600万像素的摄像头和自拍柔光灯。<br>"
                                        + "&nbsp;&nbsp;vivo Y67A另一处值得关注的地方是拍照，它是Y系列里第一款装备了1600万像素前置自摄像头的机型，并如X7那样搭配了美颜柔光灯，旨在给用户更出色的自拍体验，后置主摄像头像素为1300万。</h2>");
                                out.println("<img src=y671.jpg >");
                            }
                             else  if(mobile_version.equals("Y55")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");  
                                out.println("<h2>&nbsp;&nbsp;暂无更多介绍！</h2>");
                                out.println("<img src=Y55.jpg >");
                            }
                             else  if(mobile_version.equals("Y66")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");  
                                out.println("<h2>&nbsp;&nbsp;暂无更多介绍！</h2>");
                                out.println("<img src=Y66.jpg >");
                            }
                            else{
                                out.println("<embed src=vivoX9s.mp4 width=500 height=300 autostart=false align=left></embed>");
                                out.println("<h2>&nbsp;&nbsp;暂无更多介绍！</h2>");
                            }                                   
                            out.println("<table border=1 align=center width=100% >");
                            out.println("<tr>");
                            out.println("<td width=20% >产品版本：</td>");
                            out.println("<td>" + mobile_version + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >产品名称：</td>");
                            out.println("<td>" + mobile_name + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >产品制造商：</td>");
                            out.println("<td>" + mobile_made + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >产品价格：</td>");
                            out.println("<td>" + mobile_price + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >产品简介：</td>");
                            out.println("<td>" + mobile_mess + "</td>");
                            out.println("</tr>");                            
                            out.println("</table>");
                            out.println("<br><input type=submit value=加入购物车 name=shoppingcar style=margin-left:500px;width:200px;height:40px;font-size:25px>");
                            out.println("</form>");
                        }
                    }
                }
                con.close();
            } catch (SQLException e) {
                out.println(e);
            }
        %>
    </body>
</html>
