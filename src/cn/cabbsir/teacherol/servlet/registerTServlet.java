package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerTServlet",urlPatterns = "/registerTServlet")
public class registerTServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usr");
        String password = request.getParameter("passwd");
        String email = request.getParameter("email");
        String teachingAge = request.getParameter("age");
        String teachingArea = request.getParameter("teachingArea");
        String area = request.getParameter("province")+","+request.getParameter("citys");
        UserInfoDao dao = new UserInfoDao();
        if(dao.judgeUserName(username)==1)
            request.getRequestDispatcher("usernameal").forward(request,response);
        else{
            if(dao.registerT(username,password,email,teachingAge,teachingArea,area)==0){
                response.sendRedirect("registerT.jsp");
            }
            else{
                request.getRequestDispatcher("registerrightS.jsp").forward(request,response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
