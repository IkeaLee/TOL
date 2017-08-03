<%@ page import="cn.cabbsir.teacherol.entity.UserInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/7/31
  Time: 11:56
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
    <title>欢迎来到名师在线平台</title>
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

            <a class="navbar-brand" href="indexL.jsp"><img src="img/logo.png" alt=""></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="button navbar-right">
                <%
                    UserInfo u = (UserInfo) session.getAttribute("loginuser");
                    String username = null;
                    if(u!=null){
                        username = u.getUsername();
                        pageContext.setAttribute("username",username);
                    }
                %>
                欢迎您，<span style="color: #00ADEF">${username}</span> 同学
                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="myprofileS.jsp" style="color: #d9edf7">个人中心</a></button>
            </div>
            <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a class="active" href="indexL.jsp">首页</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="myquestion.jsp">我的问题</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="questioncenter.jsp">问题中心</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="servlet/ListFileServlet1">文件大全</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="messageboard.jsp">课后留言板</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="officalText.jsp">各地习题</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="slider-area">
    <div class="slider">
        <div id="bg-slider" class="owl-carousel owl-theme">

            <div class="item"><img src="img/slider-image-3.jpg" alt="Mirror Edge"></div>
            <div class="item"><img src="img/slider-image-2.jpg" alt="The Last of us"></div>
            <div class="item"><img src="img/slider-image-1.jpg" alt="GTA V"></div>

        </div>
    </div>
    <div class="container slider-content">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                <h2>问题</h2>
                <h2>从未如此简单</h2>
                <p>独创全新问答引擎，坐拥顶                        级教师资源，黄冈名师为您在线光速解题！</p>
                <p><span class=" form-inline">
                          <input href="askquestion.jsp"  type="button" class="btn" value="在线提问">
                        </span></p>

            </div>
        </div>
    </div>
</div>
<div class="content-area">
    <div class="container">
        <div class="row page-title text-center wow zoomInDown" data-wow-delay="1s">
            <h2>我们提供哪些服务？</h2>

        </div>
        <div class="row how-it-work text-center">
            <div class="col-md-4">
                <div class="single-work wow fadeInUp" data-wow-delay="0.8s"><a href="askquestion.">
                    <img src="img/how-work1.png" alt="">
                    <h3>在线解题</h3>
                    <p>疑难问题一键提交，海量名师在线解答，妈妈再也不用担心我有不会做的题啦！</p></a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-work  wow fadeInUp"  data-wow-delay="0.9s"><a href="filezone.html">
                    <img src="img/how-work2.png" alt="">jsp
                    <h3>文件中心</h3>
                    <p>讲课视频、名校试题、学霸笔记，一网打尽，无限下载！</p></a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-work wow fadeInUp"  data-wow-delay="1s">
                    <img src="img/how-work3.png" alt="">
                    <h3>课后留言</h3>
                    <p>特别喜欢某位老师的授课风格？不喜欢某个老师的回答方式？完全为学生提供的留言板让你完美吐槽！！！</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
                <div class="row job-posting wow fadeInUp" data-wow-delay="1s">
                    <div role="tabpanel">
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#job-seekers" aria-controls="home" role="tab" data-toggle="tab">当前在线老师</a></li>
                      </ul>

                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="job-seekers">
                            <ul class="list-inline job-seeker">
                                <li>
                                    <a href="">
                                        <img src="img/team-small-5.jpg" alt="">
                                        <div class="overlay"><h3>刘能</h3><p>中学高级化学教师</p></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/team-small-6.jpg" alt="">
                                        <div class="overlay"><h3>张洪澜</h3><p>中学生物教师</p></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/team-small-3.jpg" alt="">
                                        <div class="overlay"><h3>胡颖</h3><p>特级英语教师</p></div>
                                    </a>
                                </li>
                               
                              <li>
                                    <a href="">
                                        <img src="img/team-small-4.jpg" alt="">
                                        <div class="overlay"><h3>王延文</h3><p>优秀物理教师</p></div>
                                    </a>
                                </li>
                           
                              <li>
                                    <a href="">
                                        <img src="img/team-small-2.jpg" alt="">
                                        <div class="overlay"><h3>庄杰</h3><p>数学竞赛优秀教练员</p></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="img/team-small-1.jpg" alt="">
                                        <div class="overlay"><h3>刘艳华</h3><p>“首席语文教师”</p></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                      
                      </div>

                    </div>
                </div>
            </div>
            <div class="container">
              <div class="row page-title text-center  wow bounce"  data-wow-delay=".7s">
                    <h5>留言板</h5>
                    <h2>同学们都在说什么</h2>
                </div>
                <div class="row testimonial">
                    <div class="col-md-12">
                        <div id="testimonial-slider">
                            <div class="item">
                                <div class="client-text">                                
                                    <p>这个平台让我找到了很多曾经不会的题，也让我的很多不会的题得到了解答，真是太有用了！</p>
                                    <h4><strong>谢广坤</strong></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                    <img src="img/client-face1.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">                                
                                    <p>自从用了这个平台，我的很多难题迎刃而解，成绩也得到了提升，感谢名师在线!</p>
                                    <h4><strong>王天来</strong></h4>
                                </div>
                                <div class="client-face">
                                    <img src="img/client-face2.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">                                
                                    <p>名师在线平台的确是我们学生的好帮手，它让优等生更加优秀，让成绩较差的同学也能获得进步。</p>
                                    <h4><strong>熊轩昂</strong></h4>
                                </div>
                                <div class="client-face">
                                    <img src="img/client-face1.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">                                
                                    <p>希望名师在线平台以后能够推出更多方便老师，方便同学的功能！</p>
                                    <h4><strong>李宇轩</strong></h4>
                                </div>
                                <div class="client-face">
                                    <img src="img/client-face2.png" alt="">
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

            <div class="col-md-4">

            </div>
        </div>

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
