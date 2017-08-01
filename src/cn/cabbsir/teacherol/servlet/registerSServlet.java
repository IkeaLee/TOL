package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerSServlet",urlPatterns = "/registerSServlet")
public class registerSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usr");
        String password = request.getParameter("passwd");
        String email = request.getParameter("email");
        String grade = request.getParameter("age");
        String area = request.getParameter("province")+","+request.getParameter("citys");
        UserInfoDao dao = new UserInfoDao();
        if(dao.judgeUserName(username)==1){
            //测试代码
            System.out.println("judgeusername is running");
            request.getRequestDispatcher("usernameal.jsp").forward(request,response);
        }
        else{
            //测试代码
            System.out.println("username is right");
            int registerResult = dao.registerS(username,password,email,grade,area);
            if(registerResult==0){
                //测试代码
                System.out.println("register wrong");
                response.sendRedirect("registerS.jsp");
            }
            else {
                //测试代码
                System.out.println("register right");
                request.getRequestDispatcher("registerrightS.jsp").forward(request,response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
