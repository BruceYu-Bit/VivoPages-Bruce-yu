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
        <title>�鿴����</title>
    </head>
    <body bgcolor="black" style="color: white;">
        <h2 >�����鿴���ֻ���Ϣ����:</h2>
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
                                out.println("<h2>&nbsp;&nbsp;vivo X9��vivoȫ�������콢�����ֻ�����2016��11��1�չٷ��ع⡣"
                                        + "����2016��11��16���ڱ���ˮ������ʽ������<br>&nbsp;&nbsp;vivo X9��Ҫ�ص�Ϊ����������ǰ������ͷ��һ��2000�����ᶨ��IMX376����������ͷ��"
                                        + "һ��800���רҵ���黯����ͷ��Эͬ���տ�����������ȦЧ����������Ƭ��vivo X9�����˸�ͨ�����˺˴�������2.0GHz����������5.5���1080P��Ļ��"
                                        + "4G RAM��64G��ROM��ϣ��䱸3040mAh�ĵ�أ���֧��˫�������䡣</h2>");
                                out.println("<img src=vivo91.jpg >"); 
                                out.println("<img src=vivo92.jpg >");
                            }
                            else if(mobile_version.equals("X9s")){
                                out.println("<h2>&nbsp;&nbsp;vivo X9s��vivoȫ�������콢�����ֻ�����2016��11��1�չٷ��ع⡣"
                                        + "����2016��11��16���ڱ���ˮ������ʽ������<br>&nbsp;&nbsp;vivo X9s��Ҫ�ص�Ϊ����������ǰ������ͷ��һ��2000�����ᶨ��IMX376����������ͷ��"
                                        + "һ��800���רҵ���黯����ͷ��Эͬ���տ�����������ȦЧ����������Ƭ��vivo X9�����˸�ͨ�����˺˴�������2.0GHz����������5.5���1080P��Ļ��"
                                        + "4G RAM��64G��ROM��ϣ��䱸3040mAh�ĵ�أ���֧��˫�������䡣</h2>");
                                out.println("<img src=vivo91.jpg >"); 
                                out.println("<img src=xplay64.jpg >");
                                out.println("<img src=vivo92.jpg >");
                                out.println("<img src=xplay67.jpg >");
                                out.println("<img src=xplay68.jpg >");
                            }
                            else  if(mobile_version.equals("X9 Plus")){
                                out.println("<embed src=vivoX9Plus.mp4 width=550 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>1��vivo X9Plus����5.88Ӣ�� IPS��ʾ�����ֱ���Ϊ1920*1080��<br>"
                                        + "2��1600W��������ͷ��ǰ��2000W������ͷ+800W������ͷ���黯����ͷЧ�������ȫ�����ƣ�չ����ʵ���к͸������ʡ�<br>"
                                        + "3�����ø�ͨ����8976Pro �˺�1.95GHz 64λ��������<br>"
                                        + "4���������Ϊ4000mAh��</h2>");
                                out.println("<img src=vivo95.jpg >");
                                out.println("<img src=vivo93.jpg >"); 
                                out.println("<img src=vivo94.jpg >");                                 
                            }
                            else  if(mobile_version.equals("X9s Plus")){
                                out.println("<embed src=vivoX9sPlus.mp4 width=500 height=300 autostart=false align=left></embed>");
                                out.println("<h2>&nbsp;&nbsp;X9s Plus�������Ͻ�һ��ʽ��ƣ�������ȫ��񷶥ʽU�����ߣ�����ռ�Ƚ�һ��������������õ��Ĵ�������ɰ���գ�10���׼���ϸ205�ɰ��Ϳ���ָи�ϸ�����п��뱳��һ����ͣ�����ȫ����Ȼ����Բ����ɣ��ճָи��ѡ�<br>"
                                        + "&nbsp;&nbsp;vivoX9sPlus�䱸��ȫ��������ǰ�����շ�����ǰ��2000Wרҵ������������רҵ�黯��ͷ��ȫ�����������ƺ������㷨�������յ�ʱ��������ͷ�븱����ͷЭ���ֹ�������ʵ�־�׼��Ȼ�������黯Ч��������������ͨ������㷨�������黯Ч����"
                                        + "X9s Plus��˫���黯���������ĵ�����������������ͻ������η�������������ı���������ϸ���黯��ʵ���������Ȧ����������Ч����<br></h2>");
                                out.println("<img src=vivo91.jpg >");
                                out.println("<img src=x91.jpg >"); 
                                out.println("<img src=x92.jpg >");
                                out.println("<img src=x93.jpg >");
                            }
                            else  if(mobile_version.equals("Xplay6-1")){
                                out.println("<embed src=vivoXplay6.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;Xplayϵ��һֱ��vivoƷ�Ƶ��콢ϵ�У�vivo Xplay6��2016��11��16�շ������콢�ֻ���<br>"
                                        + "&nbsp;&nbsp;vivo Xplay6�����˸�ͨ����820ϵ�д��������䱸2K�ֱ���������Ļ��6G�˴棬�䱸4080mAh�ĵ�أ���֧��˫�������䡣<br>"
                                        + "&nbsp;&nbsp;����ϣ�vivo Xplay6������һ��5.46��2K�ֱ���Super AMOLED��������U��ṹ��ơ��Ļ��沣����ƣ�ֱ�۸о���ǰ������Բ��<br>"
                                        + "&nbsp;&nbsp;�����ϣ�vivo Xplay6�䱸����˫����ͷ��������ͷ��������ȫ��һ��IMX362��������1200��ȫ����˫�˶Խ���2400����йⵥԪ������500��������ͷ��Эͬ����ʵ�ֵ������ȦЧ����</h2>");
                                out.println("<img src=xplay61.jpg >");
                                out.println("<img src=xplay62.jpg >"); 
                                out.println("<img src=xplay63.jpg >");
                                out.println("<img src=xplay64.jpg >");
                            }
                            else  if(mobile_version.equals("Xplay6-2")){
                                out.println("<embed src=vivoXplay6-2.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;Xplayϵ��һֱ��vivoƷ�Ƶ��콢ϵ�У�vivo Xplay6��2016��11��16�շ������콢�ֻ���<br>"
                                        + "&nbsp;&nbsp;vivo Xplay6�����˸�ͨ����820ϵ�д��������䱸2K�ֱ���������Ļ��6G�˴棬�䱸4080mAh�ĵ�أ���֧��˫�������䡣<br>"
                                        + "&nbsp;&nbsp;����ϣ�vivo Xplay6������һ��5.46��2K�ֱ���Super AMOLED��������U��ṹ��ơ��Ļ��沣����ƣ�ֱ�۸о���ǰ������Բ��<br>"
                                        + "&nbsp;&nbsp;�����ϣ�vivo Xplay6�䱸����˫����ͷ��������ͷ��������ȫ��һ��IMX362��������1200��ȫ����˫�˶Խ���2400����йⵥԪ������500��������ͷ��Эͬ����ʵ�ֵ������ȦЧ����</h2>");
                                out.println("<img src=xplay68.jpg >");
                                out.println("<img src=xplay65.jpg >"); 
                                out.println("<img src=xplay66.jpg >");
                                out.println("<img src=xplay67.jpg >");
                            }
                            else  if(mobile_version.equals("Y51A")){
                                out.println("<embed src=vivoY51A.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;��Ļ�ߴ�5.0Ӣ�磬�ֱ���960x540��CPU��ͨ����425(MSM8917)��</h2>");
                                out.println("<img src=y51a2.jpg >");
                            }
                             else  if(mobile_version.equals("Y67")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;vivo Y67��vivo�����ֻ���2016��11�·�����һ�������ֻ���������һ��5.5Ӣ���720p��Ļ��ǰ�ô���1600�����ص�����ͷ���������ơ�<br>"
                                        + "&nbsp;&nbsp;vivo Y67��һ��ֵ�ù�ע�ĵط������գ�����Yϵ�����һ��װ����1600������ǰ��������ͷ�Ļ��ͣ�����X7�����������������ƣ�ּ�ڸ��û�����ɫ���������飬����������ͷ����Ϊ1300��</h2>");
                                out.println("<img src=y671.jpg >");
                            }
                             else  if(mobile_version.equals("Y67A")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");
                                out.println("<h2>&nbsp;&nbsp;vivo Y67A��vivo�����ֻ���2016��11�·�����һ�������ֻ���������һ��5.5Ӣ���720p��Ļ��ǰ�ô���1600�����ص�����ͷ���������ơ�<br>"
                                        + "&nbsp;&nbsp;vivo Y67A��һ��ֵ�ù�ע�ĵط������գ�����Yϵ�����һ��װ����1600������ǰ��������ͷ�Ļ��ͣ�����X7�����������������ƣ�ּ�ڸ��û�����ɫ���������飬����������ͷ����Ϊ1300��</h2>");
                                out.println("<img src=y671.jpg >");
                            }
                             else  if(mobile_version.equals("Y55")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");  
                                out.println("<h2>&nbsp;&nbsp;���޸�����ܣ�</h2>");
                                out.println("<img src=Y55.jpg >");
                            }
                             else  if(mobile_version.equals("Y66")){
                                out.println("<embed src=vivoY67.mp4 width=500 height=300 autostart=false align=left></embed><br>");  
                                out.println("<h2>&nbsp;&nbsp;���޸�����ܣ�</h2>");
                                out.println("<img src=Y66.jpg >");
                            }
                            else{
                                out.println("<embed src=vivoX9s.mp4 width=500 height=300 autostart=false align=left></embed>");
                                out.println("<h2>&nbsp;&nbsp;���޸�����ܣ�</h2>");
                            }                                   
                            out.println("<table border=1 align=center width=100% >");
                            out.println("<tr>");
                            out.println("<td width=20% >��Ʒ�汾��</td>");
                            out.println("<td>" + mobile_version + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >��Ʒ���ƣ�</td>");
                            out.println("<td>" + mobile_name + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >��Ʒ�����̣�</td>");
                            out.println("<td>" + mobile_made + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >��Ʒ�۸�</td>");
                            out.println("<td>" + mobile_price + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println("<td width=20% >��Ʒ��飺</td>");
                            out.println("<td>" + mobile_mess + "</td>");
                            out.println("</tr>");                            
                            out.println("</table>");
                            out.println("<br><input type=submit value=���빺�ﳵ name=shoppingcar style=margin-left:500px;width:200px;height:40px;font-size:25px>");
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
