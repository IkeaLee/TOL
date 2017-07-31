package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "loginServlet",urlPatterns = "/loginservlet")
public class loginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("usr2");
        String password = request.getParameter("passwd2");
        String identify = request.getParameter("member");
        UserInfoDao dao =new UserInfoDao();
        if(identify.equals("s")){
            //测试代码
            System.out.println("chooseing s");
            UserInfo loginUser = dao.loginSDao(username,password);
            if(loginUser==null){
                response.sendRedirect("login.jsp");
            }
            else{
                HttpSession session = request.getSession();
                session.setAttribute("loginuser",loginUser);
                request.getRequestDispatcher("indexL.jsp").forward(request,response);
            }
        }
        else if(identify.equals("t")){
            //测试代码
            System.out.println("choosing t");
            UserInfo loginUser = dao.loginTDao(username,password);
            if(loginUser==null){
                response.sendRedirect("login.jsp");
            }
            else{
                HttpSession session = request.getSession();
                session.setAttribute("loginuser",loginUser);
                request.getRequestDispatcher("indexTeacher.html").forward(request,response);
            }

        }
        else if(identify.equals("a")){
            //测试代码
            System.out.println("choosing a");
            int loginUser=dao.loginADao(username,password);
            if(loginUser==0)
                response.sendRedirect("login.jsp");
            else{
                request.getRequestDispatcher("myprofileAdmin.html").forward(request,response);
            }
        }
        else{
            //测试代码
            System.out.println("什么也没选");
            response.sendRedirect("login.jsp");
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
