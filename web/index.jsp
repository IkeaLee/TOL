<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
</head>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>欢迎来到名师在线平台</title>
        <meta name="description" content="Easy to ask question to teacher">
        <meta name="author" content="Sandman">
        <meta name="keyword" content="html, css, bootstrap, Teacher-Student">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
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
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="unanswered.jsp">待回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="answeredQuestion.jsp">已回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a  class="active" href="/servlet/ListFileServlet">文件大全</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
 <form action="${pageContext.request.contextPath}/servlet/UploadHandleServlet" enctype="multipart/form-data" method="post">
  <input type="hidden" name="username" value="${username}"><br/>
  上传文件1：<input type="file" name="file1"><br/>
  <input type="submit" value="提交">
 </form>
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
                    </center> 
                    </span></p>
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
