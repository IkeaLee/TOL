package cn.cabbsir.teacherol.servlet;

import cn.cabbsir.teacherol.entity.MessageInfo;
import cn.cabbsir.teacherol.logic.MessageInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "submessageServlet",urlPatterns = "/submessageServlet")
public class submessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String message = request.getParameter("message");
        String subUser = request.getParameter("username");
        MessageInfoDao dao = new MessageInfoDao();
        if(dao.subM(message,subUser)==0){
            request.getRequestDispatcher("subMFalse.jsp").forward(request,response);
        }
        else{
            request.getRequestDispatcher("subMSuccess.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
