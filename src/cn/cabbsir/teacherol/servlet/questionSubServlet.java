package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.QuestionInfo;
import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.QuestionInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "questionSubServlet",urlPatterns = "/questionSubServlet")
public class questionSubServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String content = request.getParameter("textarea");
        String subject = request.getParameter("sub");
        String gradeage = request.getParameter("gra");
        String submituser = request.getParameter("usr");
        QuestionInfoDao dao = new QuestionInfoDao();
        if(content==null){
            response.sendRedirect("askquestion.jsp");
        }
        else {
            if (dao.InsertQuestion(content, submituser, Integer.parseInt(gradeage), subject) == 0) {
                response.sendRedirect("askquestion.jsp");
            } else {
                dao.SubtimeAdd(submituser);
                request.getRequestDispatcher("askSuccess.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
