<%@ page import="cn.cabbsir.teacherol.entity.UserInfo"%>
<%@ page import="cn.cabbsir.teacherol.entity.AreaInfo" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2017/7/31
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
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
    </script>
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

            <a class="navbar-brand" href=""><img src="img/logo.png" alt=""></a>
        </div>

    </div></nav>



<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header"><i class="icon-user"></i> 个人信息</li>
                    <li class="active"><a href="myprofileS.jsp">我的信息</a></li>

                </ul>
            </div>
        </div>
        <div class="span9">
            <div class="row-fluid">
                <div class="page-header">
                    <h1>我的个人信息 <small>修改个人信息</small></h1>
                </div>
                <form method="post" class="form-horizontal" action="UpdateS1Servlet">
                    <fieldset>
                        <div class="control-group">
                            <%
                                UserInfo user = (UserInfo) session.getAttribute("loginuser");
                                String username = null;
                                String email=null;
                                String password = null;
                                int score = 0;
                                String area = null;
                                int grade = 0;
                                String weizhi;
                                String []g=null;
                                int x,y;
                                if(user!=null){
                                    username = user.getUsername();
                                    email = user.getEmail();
                                    password = user.getPassword();
                                    score = user.getScore();
                                    grade = user.getGrade();
                                    area= user.getArea();
                                    g=area.split(",");
                                    x=Integer.parseInt(g[0]);
                                    y=Integer.parseInt(g[1]);
                                    AreaInfo ai = new AreaInfo();
                                    weizhi = ai.Judgement(x,y);
                                    pageContext.setAttribute("area", weizhi);
                                    pageContext.setAttribute("username",username);
                                    pageContext.setAttribute("email",email);
                                    pageContext.setAttribute("password",password);
                                    pageContext.setAttribute("score",score);
                                    pageContext.setAttribute("grade",grade);
                                }
                            %>
                            <label class="control-label" >用户名</label>
                            <div class="controls">
                                <span STYLE="color: #00AEEF">${username}</span>
                                <input value="${username}" name="usr" type="hidden">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="email">电子邮件</label>
                            <div class="controls">
                                <span style="color: #00AEEF">${email}</span><br>
                                <input type="text" class="input-xlarge" id="email" name="email" value="${email}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password">密码</label>
                            <div class="controls">
                                <span STYLE="color: #00AEEF">${password}</span><br>
                                <input type="text" class="input-xlarge" id="password" value="${password}" name="password"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >居住地</label>
                            <div class="controls">
                                <div>
                                    <span style="color: #00AEEF">${area}</span>
                                </div>
                                <select name="province" id="pro" style="color: #5e5e5e" onchange="chooseAera()">
                                    <option >保密</option>
                                    <script type="text/javascript">
                                        var pro = document.getElementById("pro");
                                        pro.length = 0;
                                        for(j=0;j<x.length;j++){
                                            pro.options[pro.length] = new Option(x[j],j);
                                        }
                                    </script>
                                </select>
                                <select id="city" name="citys" style="color: #5e5e5e">
                                    <option >保密</option>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >积分</label>
                            <div class="controls">
							<span id="score" style="color: #00AEEF">
                                ${score}
                            </span>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >年级</label>
                            <div class="controls"><span style="color: #00AEEF;">${grade}</span> </div>
                            <div class="controls">
                                <select name="grade">
                                    <option value="choice" selected="selected">请选择</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-actions">
                            <input type="submit" class="btn btn-success btn-large" value="保存改动" /> <a class="btn" href="myprofileS1.jsp">取消</a><a class="btn" href="adminS.jsp">返回</a>
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
            <p><span><center>Powered by Team13, All rights reserved</center></span></center> </p>
        </div>
    </div>
</footer></div></footer>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/wow.js"></script>
<script src="js/main.js"></script>
</body>
</html>
