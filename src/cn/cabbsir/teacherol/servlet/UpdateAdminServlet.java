package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateAdminServlet",urlPatterns = "/UpdateAServlet")
public class UpdateAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("passwd");
        UserInfoDao dao = new UserInfoDao();
        int user = dao.UpdateAdmin(username,password);
        if(user==0)
            response.sendRedirect("adminprofile.jsp");
        else
            request.getRequestDispatcher("updateSuccess.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
