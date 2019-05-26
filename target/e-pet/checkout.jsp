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
<title>Checkout</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- //cart -->

<script type="text/javascript">
	//根据uid查询购物车的内容
	window.onload = (function() {
		var uid = $("#user_id").text();
		//alert(uid);
			$.ajax({
					type : "get",
					url : "cartCtrl/selectCart",
					contentType : "application/json",
					data : {
						u_id : uid
					},
					dataType : "json",
					success : function(data) {
						//console.log(data);
						var info = "";
						$.each(data,function(i, n) {
									var	cartid = data[i].cartid;
									var pname = data[i].pname;
									var pimg = data[i].pimg;
									var pprice = data[i].pprice;
									var a = '<a href="javascript:void(0)" id="buyit" class="btn btn-primary">购买</a>';
									var b = '<a href="cartCtrl/delProFromCart?pname='+pname+'" class="btn btn-danger">从购车中删除</a>';
									var cList = "<tr><th>" + cartid + "</th><th>" + pname + "</th><th>"
											+ pimg + "</th><th>"
											+ pprice + "</th><th>" + a
											+ "  " + b + "</th></tr>";
									$("#info tr:eq(0)")
											.after(cList);
								});
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
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand">
						<a href="index.jsp">E-PET</a>
					</h1>
				</div>
				<!--navbar-header-->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp" class="active">HOME</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">PETS<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Friend</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Chocolate</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Heart shaped</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">1 kG</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">PET FOOD<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Friend</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Heart shaped</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">1 kG</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">ABOUT US<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-15">
										<h4>我们的宗旨：</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">E-pet is the world's leading pet travel and lifestyle brand. Our website and mobile apps connect millions of pet owners around the globe with more than 250,000 pet friendly places. Users can seamlessly compare and book thousands of pet friendly hotels and vacation rentals directly on the app, all with no booking fees. And planning an epic dog-friendly road trip is a breeze using BringFido's database of pup-approved restaurants, dog parks, hiking trails and shopping destinations. Pet parents can rest easy knowing that our directory of licensed veterinarians, sitters, and groomers is just a tap away.</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">SERVICES<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-15">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Friend</a></li>
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
<!-- 				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search"
						aria-hidden="true"></span></a>
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default"
								aria-label="Left Align">Search</button>
						</form>
					</div>
				</div> -->
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user"
						aria-hidden="true" id="user_id">${cart.userid }</span></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//header-->
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
			<h2>My Shopping Cart</h2>
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<table id="info" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>产品编号</th>
								<th>产品名</th>
								<th>产品样图</th>
								<th>价格</th>
								<th>操作</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--//checkout-->
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
						<li><a href="#"><img src="images/i1.png" alt="" />Follow
								us on Facebook</a></li>
						<li><a href="#"><img src="images/i2.png" alt="" />Follow
								us on Twitter</a></li>
						<li><a href="#"><img src="images/i3.png" alt="" />Follow
								us on Google-plus</a></li>
						<li><a href="#"><img src="images/i4.png" alt="" />Follow
								us on Pinterest</a></li>
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