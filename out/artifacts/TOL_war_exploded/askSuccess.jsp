<%--
  Created by IntelliJ IDEA.
  User: CabbS
  Date: 2017/7/28
  Time: 7:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta http-equiv="refresh" content="3;url= myquestion.jsp">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Welcome logging in</title>
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

            <a class="navbar-brand" href="#"><img src="img/logo.png" alt=""></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">

                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="login.jsp" style="color: #d9edf7">已有账号？去登陆</a></button>

            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a class="active" href="indexL.jsp">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezone.jsp">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="msgboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="daysign.jsp">各地试题</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="content-area">
    <div class="container">
        <div  data-wow-delay="1s">

            <br>
            <br>

            <br>
            <br>

            <h2 align="center">试题提交成功</h2><br>

            <p align="left">3秒后自动跳转至我的试题界面</p>
            <p align="left"><a href="myquestion.jsp">点击立即跳转</a> </p>
            <br>
            <br>
        </div>
        <div class="row how-it-work text-center"></div>
    </div>
    <div class="container"></div>

</div>
<div class="footer-area">
    <div class="container">
        <div class="row footer"></div>

    </div>
    <p><center>
    <p>(C)Powered by Team13 All rights reserved                  </p>
    </center>
    </p>
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