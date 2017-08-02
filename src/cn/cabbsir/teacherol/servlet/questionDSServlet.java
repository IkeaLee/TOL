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

@WebServlet(name = "questionDSServlet",urlPatterns = "/questionDSServlet")
public class questionDSServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        QuestionInfoDao dao = new QuestionInfoDao();
        QuestionInfo question = dao.SelectId(id);
        HttpSession session=request.getSession();
        session.setAttribute("selectquestion",question);
        request.getRequestDispatcher("questiondetailS.jsp").forward(request,response);
    }
}
