<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/1
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的问题</title>
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
                        subtimes = u.getSubTimes();
                        pageContext.setAttribute("username",username);
                        pageContext.setAttribute("subtimes",subtimes);
                    }
                %>
                欢迎您，<span style="color: #00ADEF">${username}</span> 同学</span>
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="lr/index.html" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="indexL.jsp">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="active" href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezone.jsp">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="msgboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="daysign.jsp">每日签到</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <div class="row page-title text-center wow bounce"  data-wow-delay="1s">
        <h5>我的问题</h5>
        <h2>您已经在本站提交了<span style="color:orangered;">${subtimes}</span>道难题，祝学习进步！</h2>
    </div>
    <form action="stu" method="post">
        <input type="radio" name="mem" value="Y">查看已解决
        <input type="radio" name="mem" value="N">查看未解决
        <input type="hidden" value="${username}" name="usr">
        <input type="submit">
    </form>
    <div class="row jobs">
        <div class="col-md-9">
            <div class="job-posts table-responsive">
                <table class="table">
                    <c:forEach items="${questions}" var="q">
                    <tr class="odd wow fadeInUp" data-wow-delay="1s">
                        <td width="51%" class="tbl-title"><h4>${q.id}<br><span class="job-type">${q.subject}</span></h4></td>
                        <td width="17%"><p>题目水平：${q.gradeage}</p></td>
                        <td width="12%"><p><i class="icon-location"></i>是否被解答：${q.status}</p></td>
                        <td width="12%"><p>解答教师：${q.answeruser}</p></td>
                        <td width="8%" class="tbl-apply"><a href="questiondetail.jsp">查看详情</a></td>
                    </tr>
                    </c:forEach>
                </table>
            </div>

        </div>
        <div class="col-md-3 hidden-sm">
            <div class="job-add wow fadeInRight" data-wow-delay="1.5s">
                <h2>还有问题?</h2>
                <a href="askquestion.jsp">马上提问！</a>
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
        <p><span><center>
                     Powered by Team13, All rights reserved
        </center></span> </p>
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
