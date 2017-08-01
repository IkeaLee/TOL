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
import java.util.ArrayList;

@WebServlet(name = "adminSServlet",urlPatterns = "/adminSServlet")
public class adminSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserInfoDao dao = new UserInfoDao();
        String choice = request.getParameter("choice");
        ArrayList<UserInfo> users = new ArrayList<UserInfo>();
        if("1".equals(choice)){
            //测试代码
            System.out.println("查询全部用户");
            users=dao.SelectSAll();
        }
        else{
            //测试代码
            System.out.println("按姓名查询");
            String username = request.getParameter("user");
            UserInfo user = dao.SelectSName(username);
            users.add(user);
        }
        request.setAttribute("users",users);
        request.getRequestDispatcher("adminS.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
