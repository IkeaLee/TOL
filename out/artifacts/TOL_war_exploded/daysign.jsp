<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/1
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>每日签到</title>
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
    <style type="text/css">
        *{margin:0;padding:0;list-style-type:none;}
        a,img{border:0;text-decoration:none;}
        /*今日签到*/
        .singer{border:1px solid #DCDBDB;padding:10px;height:45px;line-height:45px;width:290px;margin:20px auto;}
        .singer_l_cont, .singer_r_img{float:left;}
        .singer_l_cont{width:145px;background:url(img/sing_per.gif) no-repeat left 12px;text-indent:23px;font-size:12px;}
        .singer_r_img{display:block;width:114px;height:52px;background:url(img/sing_week.gif) right 2px no-repeat;vertical-align:middle;float:right;*margin-bottom:-10px;}
        .singer_r_img:hover{background-position:right -53px;text-decoration:none;}
        .singer_r_img span{margin-left:14px;font-size:16px;font-family:'Hiragino Sans GB','Microsoft YaHei',sans-serif !important;font-weight:700;color:#165379;}
        .singer_r_img.current{background:url(img/sing_sing.gif) no-repeat 0 2px;}
    </style>

</head>
<body>

<div id="preloader"></div>
<!-- Body content -->

<div class="header-connect">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-sm-8 col-xs-8">
                <div class="header-half header-call">
                    <span>Powered by Sandman,CabbSir,GeorgeChen7</span>
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
            </button>
            <a class="navbar-brand" href="indexL.jsp"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">
                <%
                    UserInfo u = (UserInfo) session.getAttribute("loginuser");
                    String username = null;
                    int score=0;
                    if(u!=null){
                        username = u.getUsername();
                        score = u.getScore();
                        pageContext.setAttribute("username",username);
                        pageContext.setAttribute("score",score);
                    }
                %>
                欢迎您，<span style="color: #00ADEF">${username}</span> 同学
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="lr/index.html" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="index.html">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.html">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.html">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezone.html">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="msgboard.html">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a class="active" href="daysign.html">每日签到</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><br>

</p>
<div class="singer">
    <div class="singer_l_cont">
        <span>每天签到获取积分</span>
    </div>
    <div class="singer_r_r"></div>
    <button type="submit"><img src="img/sing_week.gif"></button>
</div>
<p>&nbsp;</p>
<div class="container">
    <div class="row page-title text-center wow bounce"  data-wow-delay=".5s">
        <h2>您现在共有<span style="color: orangered">${score}</span>点积分</h2>
    </div>
    <div class="row page-title text-center  wow bounce"  data-wow-delay=".7s">
        <h2>积分是什么？有什么用？</h2>
    </div>
    <div class="row testimonial">
        <div class="col-md-12">
            <div id="testimonial-slider">
                <div class="item">
                    <div class="client-text">
                        <p>通过每日签到、提问，回答，上传文件，能够获得积分。积分可以用于享受一系列令人兴奋的福利。</p>
                    </div>

                </div>
                <div class="item">
                    <div class="client-text">
                        <p>积分福利包括名师视频和高级教学资料等大量优质学习资源。</p>
                    </div>
                </div>
                <div class="item">
                    <div class="client-text">
                        <p>在不久的将来，我们会开放积分商城，届时可使用积分免费兑换各种精美商品，敬请期待！</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
</div>

</div>
<div class="footer-area">
    <div class="container">
        <div class="row footer">



        </div>
    </div>
    <div class="row footer-copy">
        <span><center>Powered by Team13, All rights reserved</center></span> </p>
    </div>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/wow.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">

</script>

</body>
</html>
