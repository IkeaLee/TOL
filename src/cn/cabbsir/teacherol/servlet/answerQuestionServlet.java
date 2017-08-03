package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.QuestionInfo;
import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.QuestionInfoDao;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "answerQuestionServlet",urlPatterns = "/answerQuestionServlet")
public class answerQuestionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String answer = request.getParameter("ans");
        UserInfoDao udao = new UserInfoDao();
        String answeruser = request.getParameter("ansusr");
        UserInfo loginuser =  udao.SelectTName(answeruser);
        String id = request.getParameter("no");
        QuestionInfoDao dao = new QuestionInfoDao();
        if(dao.InsertAnswer(answer,answeruser,Integer.parseInt(id))==0||answer==null){
            //测试代码
            System.out.println("插入失败"+id+answer+""+answeruser);
            response.sendRedirect("answerquestion.jsp");
        }
        else{
            //测试代码
            System.out.println("插入成功");
            dao.AnswerTimesAdd(answeruser);
            HttpSession session = request.getSession();
            session.setAttribute("loginuser",loginuser);
            session.setAttribute("num",dao.SelectUnanswered(loginuser.getTeachingArea()));
            request.getRequestDispatcher("answerSuccess.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
