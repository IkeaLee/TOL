<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %>
<%--
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
    <title>官方试题</title>
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
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="myprofileS.jsp" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="indexL.jsp">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="servlet/ListFileServlet1">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="messageboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a class="active" href="officalText.jsp">各地试题</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<p>&nbsp;</p>
<p><br>
</p>
<div class="container">
    <div class="row page-title text-center wow bounce"  data-wow-delay=".5s">
        <h2>本系统每日从题库自动更新试题，以下为今日内容</h2>
        <form action="getpicServlet">
            <button class="btn"><a href="getpicServlet">点击刷新</a></button>
        </form>
    </div>
    <div class="row page-title text-center  wow bounce"  data-wow-delay=".7s">
        <h2><img src="img/getpic/14.png" width="557" height="786"><img src="img/getpic/15.png" width="545" height="774"><img src="img/getpic/16.png" width="544" height="789"><img src="img/getpic/17.png" width="528" height="785"><img src="img/getpic/18.png" width="541" height="776"><img src="img/getpic/19.png" width="549" height="764"><img src="img/getpic/20.png" width="525" height="744"><img src="img/getpic/1.png" width="635" height="878"><img src="img/getpic/2.png" width="640" height="878"><img src="img/getpic/3.png" width="651" height="885"><img src="img/getpic/4.png" width="639" height="893"><img src="img/getpic/5.png" width="641" height="889"><img src="img/getpic/6.png" width="708" height="931"><img src="img/getpic/7.png" width="507" height="723"><img src="img/getpic/8.png" width="517" height="731"><img src="img/getpic/9.png" width="533" height="731"><img src="img/getpic/11.png" width="543" height="801"><img src="img/getpic/12.png" width="539" height="775"><img src="img/getpic/13.png" width="519" height="787"></h2>
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
