
<%@ page import="cn.cabbsir.teacherol.entity.AreaInfo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/8/1
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理员系统</title>
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

            <a class="navbar-brand" href="indexL.jsp"><img src="img/logo.png" alt=""></a>
        </div>

    </div></nav>



<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header"><i class="icon-wrench"></i>用户管理</li>
                    <li><a href="adminT.jsp">教师管理</a></li>
                    <li class="active"><a href="adminS.jsp">学生管理</a></li>

                    <li class="nav-header"><i class="icon-user"></i>个人信息</li>
                    <li><a href="adminprofile.jsp">我的信息</a></li>
                    <li><a href="login.jsp">登出</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <div class="row-fluid">
                <div class="page-header">
                    <h1>Users <small>All users</small></h1>
                </div>
                <form action="adminSServlet" method="post" name="formAdminS">
                <div>
                    <table width="237" height="41">
                        <tr>
                            <td>
                            <td><input value="在此处输入姓名" type="text" id="username" name="user"></td>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                        <tr>
                             <select name="choice" id="stu">
                            <option value="1" >查询所有学生</option>
                            <option value="2">姓名查询学生</option>
                        </select>
                        </tr>
                        <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                        <tr>
                            <input  type="submit" class="btn btn-success" value="查询">
                        </tr>
                    </table>
                </div>
                </form>

                    <table width="682">
                        <tr>
                            <td>姓名</td><td>密码</td><td>电子邮件</td><td>年级</td><td>操作</td>
                        </tr>
                        <c:forEach items="${users}" var="u">
                            <tr>
                                <td>${u.username}</td><td>${u.password}</td><td>${u.email}</td><td>${u.grade}</td><td><a class="btn btn-success" href="adminuSServlet?username=${u.username}">修改</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                

                </div>
        </div>
    </div>

    <hr>


</div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>




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
