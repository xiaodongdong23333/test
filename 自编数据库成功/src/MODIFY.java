import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
public class MODIFY extends HttpServlet {
    private String target="/modifysuc.jsp";
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
    }
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");
        String number=request.getParameter("number");
        String name=request.getParameter("name");
        String score=request.getParameter("score");

        request.setAttribute("NUMBER",number);
        request.setAttribute("NAME",name);
        request.setAttribute("SCORE",score);


        ServletContext context = getServletContext();

        System.out.println("Redirecting to"+ target);
        RequestDispatcher  mymodify=context.getRequestDispatcher(target);
        mymodify.forward(request,response);
    }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
    public  void destroy(){

    }


}
