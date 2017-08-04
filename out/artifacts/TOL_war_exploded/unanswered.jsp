<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %>
<%@ page import="cn.cabbsir.teacherol.entity.QuestionInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--

  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/2
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>问题中心</title>
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

<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- Body content -->

<div class="header-connect">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-sm-8 col-xs-8">
                <div class="header-half header-call">
                    <p>
                        <span>Powered by Sandman,CabbSir,GeorgeChen7</span>
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
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="indexTeacher.jsp"><img src="img/logo.png" alt=""></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">
                <%
                    UserInfo u = (UserInfo) session.getAttribute("loginuser");
                    String username = null;
                    if(u!=null){
                        username = u.getUsername();
                        pageContext.setAttribute("username",username);
                    }
                %>
                欢迎您，<span style="color: #00AEEF;">${username}</span>老师！
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="lr/index.html" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="indexTeacher.jsp">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="active" href="unanswered.jsp">待回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="answeredquestion.jsp">已回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="servlet/ListFileServlet">文件大全</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container">
    <div class="row page-title text-center wow bounce"  data-wow-delay="1s">
        <h5>问题中心</h5>
        <h2>当前共有<span style="color: orangered">${num}道题</span>等待您去解答</h2>
    </div>
    <div class="row jobs">
        <div class="col-md-9">
            <div class="job-posts table-responsive">
                <table class="table">
                    <c:forEach items="${questionss}" var="q">
                        <tr class="odd wow fadeInUp" data-wow-delay="1s">
                            <td width="51%" class="tbl-title"><h4>题号${q.id}<br><span class="job-type">${q.subject}</span></h4></td>
                            <td width="17%"><p>题目水平：${q.gradeAge}</p></td>
                            <td width="12%"><p><i class="icon-location"></i>未解答</p></td>
                            <td width="12%"><p>提问者：${q.submitUser}</p></td>
                            <td width="8%" class="tbl-apply"><a href="answerServlet?id=${q.id}">回答</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="footer-area">
    <div class="container">
        <div class="row footer">

            <div class="col-md-4">

            </div>
        </div>

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
