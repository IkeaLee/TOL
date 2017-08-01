package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "adminuSServlet",urlPatterns = "/adminuSServlet")
public class adminuSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //测试代码
        System.out.println("传参到servlet了");
        String username = request.getParameter("username");
        UserInfoDao dao = new UserInfoDao();
        UserInfo user = dao.SelectSName(username);
        HttpSession session=request.getSession();
        session.setAttribute("loginuser",user);
        request.getRequestDispatcher("myprofileS1.jsp").forward(request,response);
    }
}
