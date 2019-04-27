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
public class form extends HttpServlet {

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
            out.println("<title>Servlet form</title>");
            out.println("</head>");
            out.println("<body>");
            String str1 = request.getParameter("classify1");
            String str2 = request.getParameter("classify2");
            String str3 = request.getParameter("classify3");

            String pro1 = request.getParameter("produce1");
            String pro2 = request.getParameter("produce2");
            String pro3 = request.getParameter("produce3");
            out.println("您选择的类别是： ");
            if (str1 != null) {
                try {
                    byte[] b = str1.getBytes("ISO-8859-1");
                    str1 = new String(b);
                    out.println(str1+"&nbsp;");
                } catch (Exception e) {
                }
            }
            if (str2 != null) {
                try {
                    byte[] b = str2.getBytes("ISO-8859-1");
                    str2 = new String(b);
                    out.println(str2+"&nbsp;");
                } catch (Exception e) {
                }
            }
            if (str3 != null) {
                try {
                    byte[] b = str3.getBytes("ISO-8859-1");
                    str3 = new String(b);
                    out.println(str3+"&nbsp;");
                } catch (Exception e) {
                }
            }
            out.println("<br>");
            out.println("您选择的生产商是： ");
            if(pro1!=null){ 
                out.println(pro1+"&nbsp;");
            }
            if(pro2!=null){ 
                out.println(pro2+"&nbsp;");
            }
            if(pro3!=null){ 
                out.println(pro3+"&nbsp;");
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
