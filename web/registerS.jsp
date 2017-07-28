<%--
  Created by IntelliJ IDEA.
  User: CabbS
  Date: 2017/7/28
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <script type="text/javascript">
        var x = ["保密","北京市","天津市","上海市","重庆市","河北省","山西省","辽宁省","吉林省","黑龙江省","江苏省","浙江省","安徽省","福建省","江西省","山东省","河南省","湖北省","湖南省","广东省","海南省","四川省","贵州省","云南省","陕西省","甘肃省","青海省","台湾省","内蒙古自治区","广西壮族自治区","西藏自治区","宁夏回族自治区","新疆维吾尔自治区","香港特别行政区","澳门特别行政区"];
        var y = [];
        y[0] = new Array("保密    ");
        y[1] = new Array("北京市区");
        y[2] = new Array("天津市区");
        y[3] = new Array("上海市区");
        y[4] = new Array("重庆市区");
        y[5] = ["石家庄","唐山","邯郸"];
        y[6] = ["太原","大同","阳泉"];
        y[7] = ["沈阳","大连","鞍山"];
        y[8] = ["长春","吉林","四平"];
        y[9] = ["哈尔滨","齐齐哈尔","鸡西"]; y[10] = ["南京","无锡","徐州"];y[11] = ["杭州","宁波","温州"];
        y[12] = ["合肥","芜湖","淮南"];y[13] = ["福州","厦门","漳州"];y[14] = ["南昌","九江","上饶"];
        y[15] = ["济南","青岛","淄博"];y[16] = ["郑州","开封","洛阳"];y[17] = ["武汉","黄石","十堰"];
        y[18] = ["长沙","株洲","湘潭"];y[19] = ["广州","深圳","珠海"];y[20] = ["海口","三亚","三沙"];
        y[21] = ["成都","绵阳","自贡"];y[22] = ["贵州","遵义","六盘水"];y[23] = ["昆明","曲靖","玉溪"];
        y[24] = ["西安","宝鸡","咸阳"];y[25] = ["兰州","嘉峪关","金昌"];y[26] = ["西宁","海东","海北"];
        y[27] = ["台北","新北","桃园"];y[28] = new Array("内蒙古市区");y[29] = new Array("广西市区");
        y[30] = new Array("西藏市区");y[31] = new Array("宁夏市区");y[32] = new Array("新疆市区");
        y[33] = new Array("香港");y[34] = new Array("澳门");


        function chooseAera(){
            var pro = document.getElementById("pro").value;
            var city = document.getElementById("city");
            city.length = 0;
            for(i=0;i<y[pro].length;i++){
                city.options[city.length]=new Option(y[pro][i],i);
            }
        }
        function username(){
            if(document.form2.usr.value==0){
                document.getElementById("username").innerHTML="<font color='red'>用户名不能为空</font>";
                return false;
            }
            else{
                document.getElementById("username").innerHTML="<font color='#ffffe0'>✔</font>";
                return true;
            }
        }
        function passwd1(){
            if(document.form2.passwd.value.length<=6){
                document.getElementById("passwd1").innerHTML="<font color='red'>密码必须大于6位</font>";
                return false;
            }
            else{
                document.getElementById("passwd1").innerHTML="<font color='#ffffe0'>✔<font/>";
                return true;
            }
        }
        function passwd2(){
            if(document.form2.passwd.value==document.form2.againpasswd.value&&document.form2.againpasswd.value!="") {
                document.getElementById("passwd2").innerHTML = "<font color='#ffffe0'>✔<font/>";
                return true;
            }
            else{
                document.getElementById("passwd2").innerHTML = "<font color='red'>两次密码不同</font>";
                return false;
            }
        }
        function setEmail(){
            var pattern=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
            if(!pattern.test(document.form2.email.value)){
                document.getElementById("mail").innerHTML="<font color='red'>邮箱格式不正确</font>";
                return false;
            }
            else{
                document.getElementById("mail").innerHTML="<font color='#ffffe0'>✔</font>";
                return true;
            }
        }
        function grade() {
            if(Number(document.form2.age.value)>=9||Number(document.form2.age.value)<1){
                document.getElementById("grade1").innerHTML="<font color='red'>请输入1-9的数字</font>";
                return false;
            }
            else{
                document.getElementById("grade1").innerHTML="<font color='#ffffe0'>✔</font>";
                return true;
            }
        }

    </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎注册本平台</title>
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

                <button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s"><a href="login.jsp" style="color: #d9edf7">已有账号？去登陆</a></button>

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
            <h2 align="center">学生注册</h2>
            <p align="left">&nbsp;</p>
            <form onsubmit="passwd2()&&passwd1()&&setEmail()&&grade()&&username()" name="form2" method="post" action="">
                <table align="center" width="489" border="0" cellpadding="5" cellspacing="2">
                    <tr>
                        <td width="125"><div align="left">用户名  </div></td>
                        <td width="178"><div align="right">
                            <input name="usr" type="text" id="usr4" style="color:#000" onBlur="username()" size="30">
                        </div></td>
                        <td width="148"><label for="usr4"></label><span id="username"></span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"></div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><div align="left">密码</div></td>
                        <td><div align="right">
                            <input name="passwd" type="password" id="passwd" style="color:#000" onblur="passwd1()" size="30">
                        </div></td>
                        <td width="148"><label for="passwd"></label><span id="passwd1" ></span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"></div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><div align="left">确认密码</div></td>
                        <td><div align="right">
                            <input default="请输入与上面相同的字符" name="againpasswd" type="password" id="againpasswd" style="color:#000" onblur="passwd2()" size="30">
                        </div></td>
                        <td width="148"><label for="againpasswd"></label><span id="passwd2"></span></td>

                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"></div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><div align="left">电子邮件</div></td>
                        <td><div align="right">
                            <input name="email" type="text" id="email" style="color:#000" onblur="setEmail()" size="30">
                        </div></td>
                        <td width="148"><label for="email"></label><span id="mail"></span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"></div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><div align="left">年级(1-9)</div></td>
                        <td><div align="right">
                            <input name="age" type="text" id="age" style="color:#000" onblur="grade()" size="30">
                        </div></td>
                        <td width="148"><label for="age"></label><span id="grade1"></span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div align="right"></div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><div align="left">居住地</div></td>
                        <td><div align="right">
                            <select name="province" id="pro" style="color: #5e5e5e" onchange="chooseAera()">
                                <option>保密</option>
                                <script type="text/javascript">
                                    var pro = document.getElementById("pro");
                                    pro.length = 0;
                                    for(j=0;j<x.length;j++){
                                        pro.options[pro.length] = new Option(x[j],j);
                                    }
                                </script>
                            </select>
                            <select id="city" name="citys" style="color: #5e5e5e">
                              <option>保密</option>
                          </select>
                      </div></td>
                        <td>选择您的长居地</td>
                    </tr>
                    <tr>
                        <td colspan="3"> <div align="right">&nbsp;</div>
                            <div align="right"></div>
                            <div align="right">
                                <p align="center">
                                    <input name="重置2" type="submit" style="color: black; font-size: 12px;">
<input name="重置" type="reset" style="color: black; font-size: 12px;">
                                </p>
                            </div>
                    </tr>
                </table>
          </form>
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