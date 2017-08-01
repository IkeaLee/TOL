<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/7/31
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的信息</title>
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
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>

<div id="preloader"></div>


<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">

            <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt=""></a>
        </div>

    </div></nav>



<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header"><i class="icon-wrench"></i>用户管理</li>
                    <li><a href="adminT.jsp">教师管理</a></li>
                    <li><a href="adminS.jsp">学生管理</a></li>
                    <li class="nav-header"><i class="icon-user"></i> 个人信息</li>
                    <li class="active"><a href="adminprofile.jsp">我的信息</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <div class="row-fluid">
                <div class="page-header">
                    <h1>我的个人信息 <small>修改个人信息</small></h1>
                </div>
                <form class="form-horizontal" method="post" action="UpdateAServlet">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="name">用户名</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" name="username" id="name" value="admin" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password">密码</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" id="password" name="passwd" value="admin" />
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls"></div>
                        </div>
                        <div class="form-actions">
                            <input type="submit" class="btn btn-success btn-large" value="保存改动" /> <a class="btn" href="login.jsp">退出</a>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>

    <hr>
</div>

<footer>
    <div class="footer-area">
        <div class="container">
            <div class="row footer">

                <div class="col-md-4">

                </div>
            </div>

        </div>
        <div class="row footer-copy">
            <p><span><center>(C)Sandman Technology, All rights reserved</center></span> </p>
        </div>
    </div>
    </footer>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/wow.js"></script>
<script src="js/main.js"></script>
</body>
</html>
