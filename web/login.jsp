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
               
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="register.jsp" style="color: #d9edf7">没有账号？去注册</a></button>

            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a class="active" href="index.html">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.html">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.html">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezone.html">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="msgboard.html">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="daysign.html">每日签到</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="content-area">
    <div class="container">
      <div class="row page-title text-center wow zoomInDown" data-wow-delay="1s">
        <h2 align="left">欢迎登陆本系统</h2>
          <h2 align="left">
  <label>
            <h5>&nbsp;</h5>
          </h2>
          <table width="459" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td colspan="2">请选择您的身份
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="member" value="s" id="member_0">
学生
<label>
  <input type="radio" name="member" value="t" id="member_1">
  教师</label>
<label>
  <input type="radio" name="member" value="a" id="member_2">
  管理员</label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="168">用户名</td>
              <td width="291">&nbsp;<input type="text" style="color:#000" name="usr2" id="usr"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><label for="usr">&nbsp; </label></td>
            </tr>
            <tr>
              <td>密码</td>
              <td><label for="passwd2"></label>
                <input type="password" style="color:#000" name="passwd2" id="passwd2"></td>
            </tr>
            <tr>
              <td colspan="2">&nbsp;                
            </tr>
            <tr>
              <td colspan="2"><div align="right">&nbsp;</div>
                <div align="center">
                  <input align="left" type="submit" style="color: black">
                </div>
            </tr>
          </table>
          <p align="left">&nbsp;</p>
          <p align="left"> <form name="form1" method="post" action="servlet1">
          <p>&nbsp;</p>
            <table align="left" width="200" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="56">&nbsp;</td>
                <td width="144">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2"></tr>
              <tr>
                <td colspan="2"></tr>
            </table>
            
  </form></p>
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