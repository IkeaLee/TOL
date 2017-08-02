<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %>
<%@ page import="cn.cabbsir.teacherol.entity.QuestionInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/2
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>回答问题</title>
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
    <style>
        .elegant-aero {
            margin-left:auto;
            margin-right:auto;
            max-width: 100%;
            background: #D2E9FF;
            padding: 20px 20px 20px 20px;
            font: 12px Arial, Helvetica, sans-serif;
            color: #666;
        }
        .elegant-aero h1 {
            font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
            padding: 10px 10px 10px 20px;
            display: block;
            background: #C0E1FF;
            border-bottom: 1px solid #B8DDFF;
            margin: -20px -20px 15px;
        }
        .elegant-aero h1>span {
            display: block;
            font-size: 11px;
        }
        .elegant-aero label>span {
            float: left;
            margin-top: 10px;
            color: #5E5E5E;
        }
        .elegant-aero label {
            display: block;
            margin: 0px 0px 5px;
        }
        .elegant-aero label>span {
            float: left;
            width: 20%;
            text-align: right;
            padding-right: 15px;
            margin-top: 10px;
            font-weight: bold;
        }
        .elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
            color: #888;
            width: 50%;
            padding: 0px 0px 0px 5px;
            border: 1px solid #C5E2FF;
            background: #FBFBFB;
            outline: 0;
            -webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
            box-shadow: inset 0px 1px 6px #ECF3F5;
            font: 200 12px/25px Arial, Helvetica, sans-serif;
            height: 30px;
            line-height:15px;
            margin: 2px 6px 16px 0px;
        }
        .elegant-aero textarea{
            height:100px;
            padding: 5px 0px 0px 5px;
            width: 90%;
        }
        .elegant-aero select {
            appearance:none;
            -webkit-appearance:none;
            -moz-appearance: none;
            text-indent: 0.01px;
            text-overflow: '';
            width: 20%;
        }
        .elegant-aero input[type="submit"]{
            padding: 10px 30px 10px 30px;
            background: #66C1E4;
            border: none;
            color: #FFF;
            box-shadow: 1px 1px 1px #4C6E91;
            -webkit-box-shadow: 1px 1px 1px #4C6E91;
            -moz-box-shadow: 1px 1px 1px #4C6E91;
            text-shadow: 1px 1px 1px #5079A3;
        }
        .elegant-aero input[type="submit"]:hover{
            background: #3EB1DD;
        }
        .elegant-aero .button{
            padding: 10px 30px 10px 30px;
            background: #66C1E4;
            border: none;
            color: #FFF;
            box-shadow: 1px 1px 1px #4C6E91;
            -webkit-box-shadow: 1px 1px 1px #4C6E91;
            -moz-box-shadow: 1px 1px 1px #4C6E91;
            text-shadow: 1px 1px 1px #5079A3;
        }
        .elegant-aero .button:hover{
            background: #3EB1DD;
        }</style>
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

            <a class="navbar-brand" href="#"><img src="img/logo.png" alt=""></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">
                <%
                    QuestionInfo question = (QuestionInfo) session.getAttribute("selectquestion");
                    UserInfo u = (UserInfo) session.getAttribute("loginuser");
                    String username = null;
                    String content = null;
                    String name = null;
                    int id=0;
                    int grade=0;
                    if(u!=null){
                        content = question.getContent();
                        id=question.getId();
                        username = u.getUsername();
                        name= question.getSubmitUser();
                        grade=question.getGradeAge();
                        pageContext.setAttribute("id",id);
                        pageContext.setAttribute("username",username);
                        pageContext.setAttribute("content",content);
                        pageContext.setAttribute("name",name);
                        pageContext.setAttribute("grade",grade);
                        //测试
                        System.out.println("获得的id为"+id+"用户名"+username+"内容"+content+"级别"+grade);
                    }
                %>
                欢迎您，<span style="color: #00AEEF;">${username}</span>老师！
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="myprofileT.html" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a href="indexTeacher.html">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="active" href="unanswered.html">待回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="answeredQuestion.html">已回答的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezoneT.html">文件大全</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<br>
<div class="container"><center><span id="headfont">问题详情</span></center>
    <hr>
    <br>
    <table class="zebra">
        <tr>
            <th width="108" height="27" scope="col">提问者</th>
            <th width="552" scope="col">内容</th>
            <th width="185" scope="col">年级</th>
        </tr>
        <tr>
            <th height="189" scope="row">${name}</th>
            <td><textarea name="neirong" readonly="readonly" style="width:100%; height:100%;background: transparent;border-style: hidden">${content}</textarea></td>
            <td>${grade}</td>
        </tr>
    </table>
    <hr>
    <form name="form1" method="post" action="answerQuestionServlet" class="elegant-aero">
        <textarea  name="ans"id="question" placeholder="请输入你的解答"></textarea>
        <input type="hidden" value="${username}" name="ansusr">
        <input type="hidden" value="${id}" name="no">
        <input type="submit" name="answer" value="提交">
    </form>
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
