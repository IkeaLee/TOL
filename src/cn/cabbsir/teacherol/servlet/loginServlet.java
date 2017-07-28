package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "loginServlet",urlPatterns = "/loginservlet")
public class loginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String identify = request.getParameter("member");
        UserInfoDao dao =new UserInfoDao();
        if(identify == "s"){
            UserInfo loginUser = dao.loginSDao(username,password);
            if(loginUser==null){
                response.sendRedirect("login.jsp");
            }
            else{
                HttpSession session =request.getSession();
                session.setAttribute("loginuser",loginUser);
                request.getRequestDispatcher("indexL.html").forward(request,response);
            }
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
