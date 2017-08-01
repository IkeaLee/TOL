package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.QuestionInfo;
import cn.cabbsir.teacherol.logic.QuestionInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "stu",urlPatterns = "/stu")
public class questionSelectSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionInfoDao dao = new QuestionInfoDao();
        String x = request.getParameter("mem");
        String username = request.getParameter("usr");
        ArrayList<QuestionInfo> questions = new ArrayList<QuestionInfo>();
        if(x.equals("Y")){
            //测试代码
            System.out.println("选择已解答");
        }
        else{
            //测试代码
            System.out.println("选择未解答"+username);
            QuestionInfo question = dao.SelectSN(username);
            questions.add(question);
        }
        request.setAttribute("questions",questions);
        request.getRequestDispatcher("myquestions.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
