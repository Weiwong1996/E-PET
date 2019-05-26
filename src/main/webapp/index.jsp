<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>e-pet</title>
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
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
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
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

				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">
						<!-- 用户登录 -->
						<form id="loginForm" method="get" action="userCtrl/login">
							<fieldset id="body">
								<fieldset>
									<label for="uname">用户名：</label>
									<input type="text" name="uname" id="uname">
								</fieldset>
								<fieldset>
									<label for="upwd">密码：</label>
									<input type="password" name="upwd" id="upwd">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
							</fieldset>
							<p>新用户 ? <a class="sign" href="account.jsp">注册</a> <span><a href="#">Forgot your password?</a></span></p>
						</form>
					</div>
				</div>

				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a>
					<div id="loginBox">
						<!-- 管理员登录 -->
						<form id="loginForm" method="get" action="adminCtrl/login">
							<fieldset id="body">
								<fieldset>
									<label for="aname">管理员：</label>
									<input type="text" name="aname" id="aname">
								</fieldset>
								<fieldset>
									<label for="apwd">密码：</label>
									<input type="password" name="apwd" id="apwd">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
							</fieldset>
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="container">
			<h2 class="hdng">Lovely <span>pets</span> for you.</h2>
			<p>Our pets make your day special!</p>
			<a href="products.jsp">立即购买</a>
		</div>
	</div>

	<div class="gallery">
		<div class="container">
			<div class="gallery-grids">
				<div class="col-md-8 gallery-grid glry-one">
					<a href="products.jsp"><img src="images/324183.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="productCtrl/singlePro?pid=20">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>杭州基地出售金毛犬幼犬，大骨架金毛幼犬，双血统金毛赛级犬宠</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：1299</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid glry-two">
					<a href="products.jsp"><img src="images/324258.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info galrr-info-two">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>柴犬幼犬活体犬舍直销上海豆柴赤色双血统柴犬中小型犬宠物狗</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：1198</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/319436.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>可爱的金毛</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：2198</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/321495.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>短腿的柯基</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：998</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/322931.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="productCtrl/singlePro?pid=2">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>漂亮的大猫咪</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：898</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/322932.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>美丽的小猫咪</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：998</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/323431.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>可爱的小喵喵</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：2198</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/323578.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>滑稽的哈士奇</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：1998</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/324242.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>胖胖的小猫仔</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：599</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.jsp"><img src="images/324256.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">立即购买</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>娇小的小菊</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">￥：2998</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		 <div class="container">
			 <h3>查找</h3>
			 <form action="adminCtrl/index_search" method="get" autocomplete="off">
				 <input type="text" name="stuff" id="stuff" class="text" value="您想了解些什么？" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '您想了解些什么？';}">
				 <input type="submit" value="了解一下">
			 </form>
		 </div>
	</div>
	<!--//subscribe-->
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