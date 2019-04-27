package myservlet.control;
import mybean.data.DataByPage;
import com.sun.rowset.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class QueryAllRecord extends HttpServlet{
    CachedRowSetImpl rowSet=null;
    /**
     *
     * @param config
     * @throws ServletException
     */
    @Override
    public void init(ServletConfig config)throws ServletException{
        super.init(config);
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }        
        catch(Exception e){}
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        request.setCharacterEncoding("gb2312");
        String idNumber=request.getParameter("fenleiNumber");
        if(idNumber==null){
            idNumber="0";
        }
        int id=Integer.parseInt(idNumber);
        HttpSession session=request.getSession(true);
        Connection con=null;
        DataByPage dataBean=null;
        try{
            dataBean=(DataByPage)session.getAttribute("databean");
            if(dataBean==null)
            {
                dataBean=new DataByPage();
                session.setAttribute("dataBean",dataBean);
            }
        }
        catch(Exception e){
            dataBean =new DataByPage();
            session.setAttribute("dataBean", dataBean);
        }
        String uri="jdbc:mysql://127.0.0.1/mobile?"+"user=root&password=&characterEncoding=gb2312";
        try{
            con=DriverManager.getConnection(uri);
            Statement sql=con.createStatement(ResultSet.CLOSE_CURSORS_AT_COMMIT,ResultSet.CONCUR_READ_ONLY);
            ResultSet rs=sql.executeQuery("SELECT * FORM moblieForm wherr id="+id);
            rowSet = new CachedRowSetImpl();
            rowSet.populate(rs);
            dataBean.setRowSet(rowSet);
            con.close();
        }
        catch(SQLException exp){
        }
        response.sendRedirect("byPageShow.jsp");   
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
     public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
     {
         doPost(request,response);
     }
}