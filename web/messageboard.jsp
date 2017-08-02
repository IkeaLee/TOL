<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/2
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>课后留言板</title>
    <meta name="description" content="Easy to ask question to teacher">
    <meta name="author" content="Sandman">
    <meta name="keyword" content="html, css, bootstrap, Teacher-Student">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/fontello.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="responsive.css">
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>

<div id="preloader"></div>
<!-- Body content -->

<div class="header-connect">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-sm-8 col-xs-8">
                <div class="header-half header-call">
                    <p>
                        <span><i class="icon-cloud"></i>+86 130-0986-2939</span>
                        <span><i class="icon-mail"></i>deltasandman@163.com</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">
                <%
                    UserInfo u = (UserInfo) session.getAttribute("loginuser");
                    String username = null;
                    int subtimes=0;
                    if(u!=null){
                        username = u.getUsername();
                        pageContext.setAttribute("username",username);
                    }
                %>
                欢迎您，<span style="color: #00ADEF">${username}</span> 同学</span>
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="myprofileS.jsp" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="indexL.jsp">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezone.jsp">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a class="active" href="messageboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="daysign.jsp">每日签到</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<p>&nbsp;</p>
<div class="row jobs">
    
  <table width="1049" height="347" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="792" height="225"><div class="col-md-9">
        <div class="job-posts table-responsive">
            <table width="85%" class="table">
                <tr>
                    <td>留言内容</td><td>提交者</td>
                </tr>
                <c:forEach items="${m}" var="m">
                    <tr class="odd wow fadeInUp" data-wow-delay="1s">
                        <td width="66%" class="tbl-title"><h4 align="left">${m.message}</h4></td>
                        <td width="34%"><p align="right">${m.submituser}</p></td>
                    </tr>
                </c:forEach>
            </table>

        </div>

    </div></td><form name="mesform" action="submessageServlet" method="post">
        <td width="257"><p>
          <textarea name="message" cols="40" rows="5" class="btn-info" id="text"></textarea>
          <br>
        </p>
          <p>
              <input type="hidden" name="username" value="${username}">
            <input type="submit"  value="留言">
          </p>
        </td></form>
      </tr>
    </table>


<span>

    </span>
<p><br>
</p>
<div class="footer-area">
    <div class="container">
        <div class="row footer"></div>

    </div>
    <div class="row footer-copy">
        <p><span><center>Powered by Team13, All rights reserved</center></span> </p>
    </div>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/wow.js"></script>
<script src="js/main.js"></script>
</body>
</html>
