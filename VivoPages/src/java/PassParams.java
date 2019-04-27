


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PassParams extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
     protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException{
         PrintWriter out=resp.getWriter();
           
        out.write("doGet\r\n");
        out.write(req.getParameter("param1"));
        out.write("\r\n");
        out.write(req.getParameter("param2"));
        out.write("\r\n");
        out.write(req.getParameter("param3"));
        out.write("\r\n");
     }
   
     @Override
     protected void doPost(HttpServletRequest req, HttpServletResponse resp)
             throws ServletException, IOException{
         doGet(req,resp);
     }
}

