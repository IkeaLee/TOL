package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateT1Servlet",urlPatterns = "/updateT1Servlet")
public class updateT1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usr");
        String email = request.getParameter("email");
        String password  = request.getParameter("password");
        String teachingAge = request.getParameter("age");
        String teachingArea = request.getParameter("subject");
        String area = request.getParameter("province")+","+request.getParameter("citys");
        UserInfoDao dao = new UserInfoDao();
        int updateUser=dao.UpdateTeacher(username,password,email,area,teachingAge,teachingArea);
        if(updateUser==0){
            //测试代码
            System.out.println("教师用户名不存在"+username+password+email+area+teachingAge+teachingArea);
            response.sendRedirect("myprofileT1.jsp");
        }
        else{
            //测试代码
            System.out.println("更改通过");
            request.getRequestDispatcher("updateSuccess2.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
