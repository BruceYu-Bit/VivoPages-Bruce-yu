package user;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class userCheck2 extends HttpServlet{
    String username=null;
    String usercode=null;
    
    @Override
    public void init(ServletConfig config)throws ServletException{
        super.init(config);
    }

    /**
     *
     * @param request
     * @param response
     * @throws IOException
     */
    @Override
    public void service(HttpServletRequest request,HttpServletResponse response)throws IOException{
        response.setContentType("text/html;charset=GB2312");
        PrintWriter out=response.getWriter();
        out.println("<html><body>");
            String username=request.getParameter("xingming");
            out.println(username);
        out.println("</body></html>");
    }
    public String getUsername() {
        try{
            byte[]b=username.getBytes("ISO-8859-1");
            username=new String(b);
            return username;
        }
        catch(Exception e){
        return username;}
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getUsercode() {
        return usercode;
    }
    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }    
}