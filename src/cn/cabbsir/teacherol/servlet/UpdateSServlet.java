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

@WebServlet(name = "UpdateSServlet",urlPatterns = "/UpdateSServlet")
public class UpdateSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("usr");
        String email = request.getParameter("email");
        String password  = request.getParameter("password");
        String grade = request.getParameter("grade");
        String area = request.getParameter("province")+","+request.getParameter("citys");
        UserInfoDao dao = new UserInfoDao();
        int updateUser=dao.UpdateStudent(username,password,email,area,grade);
        if(updateUser==0){
            //测试代码
            System.out.println("user结果是null");
            response.sendRedirect("myprofileS.jsp");
        }
        else{
            //测试代码
            System.out.println("更改通过");
            request.getRequestDispatcher("updateSuccess.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
