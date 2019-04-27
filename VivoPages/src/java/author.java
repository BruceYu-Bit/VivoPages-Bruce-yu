/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class author extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet author</title>");
            out.println("</head>");
            out.println("<body>");

            String num = request.getParameter("number");
            String nam = request.getParameter("name");
            String ame = request.getParameter("xing");
            String tele = request.getParameter("tel");
            String add = request.getParameter("address");
            String cs = request.getParameter("city");
            String zhou = request.getParameter("status");
            String code = request.getParameter("code");
            String cho = request.getParameter("choice");

            try {
                byte[] b1 = nam.getBytes("ISO-8859-1");
                nam = new String(b1);
                
                byte[] b2 = ame.getBytes("ISO-8859-1");
                ame = new String(b2);
                
                byte[] b3 = add.getBytes("ISO-8859-1");
                add = new String(b3);
                
                byte[] b4 = cs.getBytes("ISO-8859-1");
                cs = new String(b4);
                
                byte[] b5 = zhou.getBytes("ISO-8859-1");
                zhou = new String(b5);
                
                byte[] b6 = cho.getBytes("ISO-8859-1");
                cho = new String(b6);
                
            } catch (Exception e) {
               
            }

            out.println("作者号为："+num + "&nbsp;<br>");
            out.println("作者名为："+nam + "&nbsp;<br>");
            out.println("作者姓为："+ame + "&nbsp;<br>");
            out.println("电话是："+tele + "&nbsp;<br>");
            out.println("地址是："+add + "&nbsp;<br>");
            out.println("城市是："+cs + "&nbsp;<br>");
            out.println("州为："+zhou + "&nbsp;<br>");
            out.println("邮编是："+code + "&nbsp;<br>");
            if(cho==null)
            {
                out.print("您尚未签约。");
            }
            else{
                out.println("你选择了签约："+cho + "&nbsp;<br>");
            }     
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
