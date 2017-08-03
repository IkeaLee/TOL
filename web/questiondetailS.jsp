<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %>
<%@ page import="cn.cabbsir.teacherol.entity.QuestionInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/2
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>问题详情</title>
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
    <link href="css/headfont.css" rel="stylesheet" type="text/css">
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        table {
            *border-collapse: collapse; /* IE7 and lower */
            border-spacing: 0;
            width: 100%;
        }

        .zebra td, .zebra th {
            padding: 10px;
            border-bottom: 1px solid #f2f2f2;
        }

        .zebra tbody tr:nth-child(even) {
            background: #f5f5f5;
            -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
            -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;
            box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
        }

        .zebra th {
            text-align: left;
            text-shadow: 0 1px 0 rgba(255,255,255,.5);
            border-bottom: 1px solid #ccc;
            background-color: #eee;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
            background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
            background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
            background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
            background-image:      -o-linear-gradient(top, #f5f5f5, #eee);
            background-image:         linear-gradient(top, #f5f5f5, #eee);
        }

        .zebra th:first-child {
            -moz-border-radius: 6px 0 0 0;
            -webkit-border-radius: 6px 0 0 0;
            border-radius: 6px 0 0 0;
        }

        .zebra th:last-child {
            -moz-border-radius: 0 6px 0 0;
            -webkit-border-radius: 0 6px 0 0;
            border-radius: 0 6px 0 0;
        }

        .zebra th:only-child{
            -moz-border-radius: 6px 6px 0 0;
            -webkit-border-radius: 6px 6px 0 0;
            border-radius: 6px 6px 0 0;
        }

        .zebra tfoot td {
            border-bottom: 0;
            border-top: 1px solid #fff;
            background-color: #f1f1f1;
        }

        .zebra tfoot td:first-child {
            -moz-border-radius: 0 0 0 6px;
            -webkit-border-radius: 0 0 0 6px;
            border-radius: 0 0 0 6px;
        }

        .zebra tfoot td:last-child {
            -moz-border-radius: 0 0 6px 0;
            -webkit-border-radius: 0 0 6px 0;
            border-radius: 0 0 6px 0;
        }

        .zebra tfoot td:only-child{
            -moz-border-radius: 0 0 6px 6px;
            -webkit-border-radius: 0 0 6px 6px;
            border-radius: 0 0 6px 6px
        }


    </style>
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
            <a class="navbar-brand" href="indexL.jsp"><img src="img/logo.png" alt=""></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">
                <%
                    QuestionInfo question = (QuestionInfo) session.getAttribute("selectquestion");
                    UserInfo u = (UserInfo) session.getAttribute("loginuser") ;
                    String username = null;
                    String name = null;
                    String content=null;
                    String answer = null;
                    String answeruser = null;
                    if(question!=null) {
                        name = u.getUsername();
                        username = question.getSubmitUser();
                        content = question.getContent();
                        answer = question.getAnswer();
                        answeruser = question.getAnswerUser();
                        pageContext.setAttribute("content", content);
                        pageContext.setAttribute("username", username);
                        pageContext.setAttribute("answer", answer);
                        pageContext.setAttribute("name",name);
                        pageContext.setAttribute("answeruser", answeruser);
                    }
                %>
                欢迎您，<span style="color: #00ADEF">${name}</span> 同学</span>
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="lr/index.html" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="index.html">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="active" href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="servlet/ListFileServlet">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="messageboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="officalText.jsp">各地试题</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container"><center><span id="headfont">问题详情</span></center>
    <table class="zebra">
        <tr>
            <th width="108" height="27" scope="col">操作人</th>
            <th width="185" scope="col">&nbsp;</th>
            <th width="552" scope="col">内容</th>
        </tr>
        <tr>
            <th height="189" scope="row">提问者</th>
            <td>${username}</td>
            <td><textarea rows="12" readonly style="width:100%; height:100%;background:transparent;border-style:none;">${content}</textarea></td>

      </tr>
        <tr>
            <th height="279" scope="row">回答教师</th>
            <td>${answeruser}</td>
            <td><textarea rows="15" readonly style="width:100%; height:100%; background:transparent; border-style:none ;">${answer}</textarea></td>

        </tr>
    </table>
    <br>
</div>
<div class="footer-area">
    <div class="container">
        <div class="row footer">

            <div class="col-md-4">

            </div>
        </div>

    </div>
    <div class="row footer-copy">
        <p><span><center>Powered by Team13, All rights reserved</center></span></p>
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