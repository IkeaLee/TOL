<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
</head>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>文件上传</title>
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
            <div class="button navbar-right">欢迎，<span>老师！</span>
                 <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="lr/index.html" style="color: #d9edf7">个人中心</a></button>
              </div>
              <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="indexTeacher.html">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="unanswered.html">待回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="answeredQuestion.html">已回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a  class="active" href="filezoneT.html">文件大全</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        <a href="filezoneT.html">返回</a>
<div class="container">
  
  <div class="row page-title text-center wow bounce"  data-wow-delay="1s">
                    <h2>上传状态</h2>
  
  <center>${message}</center>
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
                      (C)Sandman Technology, All rights reserved
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