<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/1
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我要提问</title>
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
    <style>
        .elegant-aero {
            margin-left:auto;
            margin-right:auto;
            max-width: 80%;
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
	font-size: 24px;
	color: #00ADEF;
	font-family: "Times New Roman", Times, serif;
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
        }
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
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="active" href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="filezone.jsp">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="msgboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="daysign.jsp">每日签到</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div >
<form name="questionform" action="questionSubServlet" method="post">
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="content-area">
    <div class="container">
        <div  data-wow-delay="1s"><br>

            <h2 align="center">在线提问</h2><br>
      </div>
        <div class="row how-it-work text-center"><table align="center">
            <tr>
                <td><div >
                    <select name="sub" size="1" align="right">
                        <option value="null" selected="selected">请选择科目   </option>
                        <option value="math">数学       </option>
                        <option value="chinese">语文        </option>
                        <option value="english">英语        </option>
                        <option value="physics">物理        </option>
                        <option value="chemistry">化学         </option>
                        <option value="biology">生物        </option>
                    </select>
                </div>
                </td>
                <td>
                    <select name="gra" align="left">
                        <option value="0" selected="selected">请选择年级   </option>
                        <option value="1">一年级     </option>
                        <option value="2">二年级     </option>
                        <option value="3">三年级     </option>
                        <option value="4">四年级     </option>
                        <option value="5">五年级     </option>
                        <option value="6">六年级     </option>
                        <option value="7">七年级     </option>
                        <option value="8">八年级     </option>
                        <option value="9">九年级     </option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input name="usr" type="hidden" value="${username}"></td><td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><label for="textarea"></label>
                    <textarea name="textarea" cols="100" rows="20" id="textarea">在这里输入问题详情</textarea></td>
            </tr>
            <tr>
                <td>&nbsp;</td><td>&nbsp;</td>
            </tr>
            <tr>
                <td><div>
                    <input align="right" type="submit" value="提交">
                </div></td><td><input type="reset" value="重置" align="left"></td>
            </tr>
        </table></div>
    </div>
<p>&nbsp;</p>

</div></form>


    </div>
<div class="footer-area">
    <div class="container">
        <div class="row footer"></div>

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
