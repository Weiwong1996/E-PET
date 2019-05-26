<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>个人信息</title>
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>

<script type="text/javascript">
	window.onload = (function(){
		var uid = document.getElementById("uid").value;
		//alert(uid);
		$.ajax({
			type : "get",
			url : "userCtrl/getUserById?user_id="+uid,
			contentType : "application/json",
			data : {

			},
			dataType : "json",
				success : function(data) {
					$("#uname").val(data.uname);
					$("#uemail").val(data.uemail);
					$("#upwd").val(data.upwd);
					$("#uaddress").val(data.uaddress);
					$("#uphone").val(data.uphone);
				},
			async : true
		});
	});
</script>

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
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<form action="userCtrl/updateUser" method="get">
				    <div class="register-bottom-grid">
						<h3>个人信息 / 修改</h3>
						<div class="input">
							<span>ID<label>（该项不可修改）</label></span>
							<input type="text" id="uid" name="uid" readonly="readonly" value="<%=request.getParameter("uid")%>">
						</div>
						<div class="input">
							<span>用户名<label></label></span>
							<input type="text" name="uname" id="uname">
						</div>
						<div class="input">
							<span>邮箱</span>
							<input type="text" name="uemail" id="uemail">
						</div>
						<div class="input">
							<span>联系电话</span>
							<input type="text" name="uphone" id="uphone"">
						</div>
						 <div class="input">
							<span>收货地址</span>
							<input type="text" name="uaddress" id="uaddress">
						 </div>
						 <div class="input">
							<span>密码</span>
							<input type="password" name="upwd" id="upwd">
						 </div>
					</div>
					<div class="clearfix"> </div>
					<div class="btn-group">
						<button type="submit" class="btn btn-submit"> 修改 </button>
					</div>
				</form>

			</div>
	    </div>
	</div>
	<!--//account-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="products.jsp">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="images/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="images/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>