package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.QuestionInfo;
import cn.cabbsir.teacherol.logic.QuestionInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "questionSelectSServlet",urlPatterns = "/questionSelectSServlet")
public class questionSelectSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        QuestionInfoDao dao = new QuestionInfoDao();
        String x = request.getParameter("mem");
        String username = request.getParameter("usr");
        ArrayList<QuestionInfo> questions;
        if(x.equals("Y")){
            //测试代码
            System.out.println("选择已解答");
            questions = dao.SelectSY(username);
        }
        else{
            //测试代码
            System.out.println("选择未解答"+username);
            questions = dao.SelectSN(username);
        }
        request.setAttribute("quest",questions);
        request.getRequestDispatcher("myquestion.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
