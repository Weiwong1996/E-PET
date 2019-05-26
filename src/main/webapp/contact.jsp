<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>关于我们</title>
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.jsp">E-PET</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp" class="active">首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">宠物<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-4">
										<h4>宠物狗</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">博美</a></li>
											<li><a class="list" href="products.jsp">泰迪</a></li>
											<li><a class="list" href="products.jsp">柯基</a></li>
											<li><a class="list" href="products.jsp">阿拉斯加</a></li>
											<li><a class="list" href="products.jsp">金毛</a></li>
											<li><a class="list" href="products.jsp">查看更多</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<h4>宠物猫</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">波斯猫</a></li>
											<li><a class="list" href="products.jsp">英短</a></li>
											<li><a class="list" href="products.jsp">美短</a></li>
											<li><a class="list" href="products.jsp">加菲猫</a></li>
											<li><a class="list" href="products.jsp">苏格兰折耳猫</a></li>
											<li><a class="list" href="products.jsp">查看更多</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<h4>其它</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">查看所有</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">宠粮<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-4">
										<h4>猫粮</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">0~3个月</a></li>
											<li><a class="list" href="products.jsp">3~12个月</a></li>
											<li><a class="list" href="products.jsp">成年</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<h4>狗粮</h4>
										<ul class="multi-column-dropdown">
										<li><a class="list" href="products.jsp">0~3个月</a></li>
											<li><a class="list" href="products.jsp">3~12个月</a></li>
											<li><a class="list" href="products.jsp">成年</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<h4>其它</h4>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">关于我们<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-15">
										<h4><a href="contact.jsp">关于我们：</a></h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="javascript:void(0)"> E-PET---E-PET是全球最大的中文宠物网站,下设宠物百科,宠物论坛,宠物博客,宠物领养与赠送等专区,与您一起学习宠物知识、欣赏宠物照片、训练宠物、数十名宠物健康专家为你的爱宠提供专业贴心的服务。
爱宠网通过打造独特创新的宠物行业互联网交流+销售合为一体的业务模式，结合传统的目录销售与直营店资源，把养宠、育宠、护宠的精彩生活乐趣以网络形式呈现给爱宠人士，爱宠网各版块精心设计，网站完美展现宠主、宠友、宠物的每个精彩时刻。</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">服务<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-12">
										<h4>我们提供的服务：</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="javascript:return false;">配送</a></li>
											<li><a class="list" href="javascript:return false;">检查</a></li>
											<li><a class="list" href="javascript:return false;">其它...</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="contact">
		<div class="container">
			<h2>关于我们</h2>
			<div class="map">
			<iframe src="http://www.google.cn/maps/embed?pb=!1m18!1m12!1m3!1d3444.3399235244638!2d120.37145131559205!3d30.312847612797125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x344c97bbc315cdc5%3A0x89e6af873045d5db!2z5rWZ5rGf5rC05Yip5rC055S15a2m6Zmi!5e0!3m2!1szh-CN!2scn!4v1558528136329!5m2!1szh-CN!2scn" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="contact-infom">
				<h4>介绍 :</h4>
				<p>E-PET---E-PET是全球最大的中文宠物网站,下设宠物百科,宠物论坛,宠物博客,宠物领养与赠送等专区,与您一起学习宠物知识、欣赏宠物照片、训练宠物、数十名宠物健康专家为你的爱宠提供专业贴心的服务。
爱宠网通过打造独特创新的宠物行业互联网交流+销售合为一体的业务模式，结合传统的目录销售与直营店资源，把养宠、育宠、护宠的精彩生活乐趣以网络形式呈现给爱宠人士，爱宠网各版块精心设计，网站完美展现宠主、宠友、宠物的每个精彩时刻。</p>
			</div>
			<div class="address">
				<div class="col-md-4 address-grids">
					<h4>地址 :</h4>
					<ul>
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>	浙江省<br>
							杭州市江干区,<br>
							浙江水利水电学院
						</p>
					</ul>
				</div>
				<div class="col-md-4 address-grids">
					<h4>联系电话 :</h4>
					<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+17326071938</p>
					<p><span class="glyphicon glyphicon-print" aria-hidden="true"></span>+18855752311</p>
				</div>
				<div class="col-md-4 address-grids">
					<h4>邮箱 :</h4>
					<p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:example@mail.com">weiwong0910@163.com</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>我们</h4>
					<ul>
						<li><a href="products.jsp">产品</a></li>
						<li><a href="#">在我们这里工作</a></li>
						<li><a href="#">团队</a></li>
						<li><a href="#">正在发生的事...</a></li>
						<li><a href="account.jsp">注册</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>服务</h4>
					<ul>
						<li><a href="#">支持</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact.jsp">关于我们</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>订单信息</h4>
					<ul>
						<li><a href="#">订单</a></li>
						<li><a href="#">邮寄</a></li>
						<li><a href="#">退货</a></li>
						<li><a href="#">购物卡</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>法律</h4>
					<ul>
						<li><a href="#">注册信息</a></li>
						<li><a href="#">环境</a></li>
						<li><a href="#">社会责任</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>联系我们</h4>
					<ul>
						<li><a href="#"><img src="images/i1.png" alt=""/>在Facebook上关注我们</a></li>
						<li><a href="#"><img src="images/i2.png" alt=""/>在Twitter上关注我们</a></li>
						<li><a href="#"><img src="images/i3.png" alt=""/>在Google-plus上关注我们</a></li>
						<li><a href="#"><img src="images/i4.png" alt=""/>在Pinterest上关注我们</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>DESIGNED BY WANGWEI</p>
		</div>
	</div>
</body>
</html>