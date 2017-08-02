package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.MessageInfo;
import cn.cabbsir.teacherol.entity.QuestionInfo;
import cn.cabbsir.teacherol.entity.UserInfo;
import cn.cabbsir.teacherol.logic.MessageInfoDao;
import cn.cabbsir.teacherol.logic.QuestionInfoDao;
import cn.cabbsir.teacherol.logic.UserInfoDao;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

@javax.servlet.annotation.WebServlet(name = "loginServlet",urlPatterns = "/loginservlet")
public class loginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username = request.getParameter("usr2");
        String password = request.getParameter("passwd2");
        String identify = request.getParameter("member");
        UserInfoDao dao =new UserInfoDao();
        QuestionInfoDao qdao= new QuestionInfoDao();
        MessageInfoDao mdao=new MessageInfoDao();
        if(identify.equals("s")){
            //测试代码
            System.out.println("chooseing s");
            UserInfo loginUser = dao.loginSDao(username,password);
            if(loginUser==null){
                response.sendRedirect("login.jsp");
            }
            else{
                int n = qdao.SelectAnswered();
                ArrayList<QuestionInfo> questions=qdao.SelectAllAnswered();
                ArrayList<MessageInfo> messages=mdao.getM();
                HttpSession session = request.getSession();
                session.setAttribute("m",messages);
                session.setAttribute("loginuser",loginUser);
                session.setAttribute("answerednum",n);
                session.setAttribute("questionss",questions);
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
                //测试代码
                System.out.println(loginUser.getTeachingArea());
                int m = loginUser.getFinishTimes();
                int x = qdao.SelectAnswered();
                int n = qdao.SelectUnanswered(loginUser.getTeachingArea());
                ArrayList<QuestionInfo> questions=qdao.SelectTunAnswered(loginUser.getTeachingArea());
                ArrayList<QuestionInfo> question=qdao.SelectAllAnswered();
                HttpSession session = request.getSession();
                session.setAttribute("no",m);//提交次数
                session.setAttribute("num",n);//教学学科
                session.setAttribute("all",x);//总体术
                session.setAttribute("questions",question);//已经解决的
                session.setAttribute("questionss",questions);//尚未解决的
                session.setAttribute("loginuser",loginUser);
                request.getRequestDispatcher("indexTeacher.jsp").forward(request,response);
            }

        }
        else if(identify.equals("a")){
            //测试代码
            System.out.println("choosing a");
            int loginUser=dao.loginADao(username,password);
            if(loginUser==0)
                response.sendRedirect("login.jsp");
            else{

                request.getRequestDispatcher("adminprofile.jsp").forward(request,response);
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
