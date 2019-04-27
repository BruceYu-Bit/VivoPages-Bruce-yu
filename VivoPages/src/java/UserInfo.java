/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class UserInfo extends HttpServlet {

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
            out.println("<title>Servlet UserInfo</title>");            
            out.println("</head>");
            out.println("<body>");                    
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     *
     * @param config
     * @throws ServletException
     */
    @Override
    public void init(ServletConfig config)throws ServletException{
        super.init();
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
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String filename="I:\\exercise\\WebApplication1\\web\\record\\"+request.getParameter("myfile");
                String content=getReadContent(filename);
                response.setContentType("text/html;charset=GB2312");
                PrintWriter out=response.getWriter();
                out.println("<html><body>");
                 String username=request.getParameter("name");
            String usercode=request.getParameter("code");
            String des=request.getParameter("describe");
            String sexy=request.getParameter("sex");
            String gra=request.getParameter("grade");
            String hob1=request.getParameter("hobby1");
            String hob2=request.getParameter("hobby2");
            String hob3=request.getParameter("hobby3");
            String hob4=request.getParameter("hobby4");
            String hob5=request.getParameter("hobby5");
            String hob6=request.getParameter("hobby6");
            
            try {
                byte[] b1 = username.getBytes("ISO-8859-1");
                username = new String(b1);
                
                byte[] b2 = des.getBytes("ISO-8859-1");
                des = new String(b2);
                
                byte[] b3 = sexy.getBytes("ISO-8859-1");
                sexy = new String(b3);
                
                byte[] b4 = hob1.getBytes("ISO-8859-1");
                hob1 = new String(b4);
                
                byte[] b5 = hob2.getBytes("ISO-8859-1");
                hob2 = new String(b5);
                
                byte[] b6 = hob3.getBytes("ISO-8859-1");
                hob3 = new String(b6);
                
                byte[] b7 = hob4.getBytes("ISO-8859-1");
                hob4 = new String(b7);
                
                byte[] b8 = hob5.getBytes("ISO-8859-1");
                hob5 = new String(b8);
                
                byte[] b9 = hob6.getBytes("ISO-8859-1");
                hob6 = new String(b9);
                
            } catch (Exception e) {               
            }
            out.println("姓名:"+username+"<br>");
            out.println("密码："+usercode+"<br>");
            out.println("个人描述：<br>");
            out.println("<textarea cols=40 rows=7>");
            out.println(des);
            out.println("</textarea><br>");
            out.println("性别是："+sexy+"<br><br>");
            out.println("年级是："+gra+"<br>");
            out.println("爱好是：");
            if(hob1!=null){
                out.println(hob1+"&nbsp;");
            }
            if(hob2!=null){
                out.println(hob2+"&nbsp;");
            }   
            if(hob3!=null){
                out.println(hob3+"&nbsp;");
            }
            if(hob4!=null){
                out.println(hob4+"&nbsp;");
            }
            if(hob5!=null){
                out.println(hob5+"&nbsp;");
            }
            if(hob6!=null){
                out.println(hob6+"&nbsp;");
            }  
            out.println("<br><br>");   
            out.println("<textarea rows=7 cols=40>"+content+"</textarea>");
            out.println("</body></html>");
                
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    private String getReadContent(String filename) {
        String readContent="";
        try{
            File file=new File(filename);
            FileReader in=new FileReader(file);
            BufferedReader inTwo=new BufferedReader(in);
            StringBuffer stringbuffer=new StringBuffer();
            String s=null;
            while((s=inTwo.readLine())!=null){
                byte bb[]=s.getBytes();
                s=new String(bb);
                stringbuffer.append("\n"+s);
            }
            readContent=new String(stringbuffer);
        }
        catch(IOException e){
            readContent=""+e;
        }
        return readContent;
    }

}
