package cn.cabbsir.teacherol.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "utfFilter",urlPatterns = "/*")
public class utfFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //测试代码
        System.out.println("filter运行了");
        HttpServletRequest req1 = (HttpServletRequest)req;
        HttpServletResponse resp1 = (HttpServletResponse)resp;
        req1.setCharacterEncoding("utf-8");
        resp1.setCharacterEncoding("utf-8");
        chain.doFilter(req, resp);

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
