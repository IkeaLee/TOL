package cn.cabbsir.teacherol.servlet;

import get.GetContentPicture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "getpicServlet",
        urlPatterns = {"/getpicServlet"}
)
public class getpicServlet extends HttpServlet {
    public getpicServlet() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getServletContext().getRealPath("img/getContent/getpic");
        GetContentPicture gcp = new GetContentPicture();
        gcp.get("http://blog.cabbsir.cn/?p=90", address);
        request.getRequestDispatcher("officeText.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}