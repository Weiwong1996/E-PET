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
<base href="<%=basePath%>">

<title>single</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script src="js/imagezoom.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- FlexSlider -->
<!-- <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script> -->
<!-- 把相关商品在该页下面显示 -->
<script type="text/javascript">
	// 商品在div中循环遍历
	window.onload = (function() {
		var htm = "";
		var type = "${p.ptype}";
			$.ajax({
					type : "get",
					url : "productCtrl/relatedPro",
					contentType : "application/json",
					data : {
						ptype:type,
					},
					dataType : "json",
 					success : function(data) {
						console.log(data);
						$.each(
								data,
								function(i, n) {
									var pid = data[i].pid;
									var pname = data[i].pname;
									var pimg = data[i].pimg;
									var pprice = data[i].pprice;
									var ptype = data[i].ptype;
									var pinfo = data[i].pinfo;
									//拼接div
									htm += '<div class="product-grid single-product">';
									htm += '<a href="single.jsp">';
									htm += '<div class="more-product"><span> </span></div>';
									htm += '<div class="product-img b-link-stripe b-animate-go  thickbox">';
									htm += '<img src="images/products/'+ pimg +'" class="img-responsive" alt="">';
									htm += '<div class="b-wrapper">';
									htm += '<h4 class="b-animate b-from-left  b-delay03">';
									htm += '<button>View</button>';
									htm += '</h4>';
									htm += '</div>';
									htm += '</div>';
									htm += '</a>';
									htm += '<div class="product-info simpleCart_shelfItem">';
									htm += '<div class="product-info-cust prt_name">';
									htm += '<h4>' + pname + '</h4>';
									htm += '<span class="item_price">￥：' + pprice + '</span>';
									htm += '<div class="ofr">';
									htm += '<p class="pric1"><del>$2300</del></p>';
							  		htm += '<p class="disc">[15% Off]</p>';
							 		htm += '</div>';
									htm += '<div class="clearfix"> </div>';
									htm += '</div>';
									htm += '</div>';
									htm += '</div>';
										$('#relatedPro').html(htm);
								},
						);
					},
					async : true,
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

				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.jsp">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>

				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true">${user.uname}</span></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--//single-page-->
	<div class="single">
		<div class="container">
			<div class="single-grids">
				<div class="col-md-4 single-grid">
					<div class="flexslider">
						<ul class="slides" style="list-style-type:none>
							<li data-thumb="images/single/${p.pimg }">
								<div class="thumb-image"> <img src="images/single/${p.pimg }" data-imagezoom="true" class="img-responsive"> </div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 single-grid simpleCart_shelfItem">
					<h3>${p.pname }</h3>
					<p>Its really a lovely pet,wish U happy everyday.</p>
					<div class="tag">
						<p>类别 : <a id="p_type"> ${p.ptype }</a></p>
					</div>
					<ul class="size">
						<h3>年龄</h3>
							<li><a href="#">1</a></li>
					</ul>
					<ul class="size">
						<h3>是否打疫苗</h3>
							<li><a href="#">已接种</a></li>
					</ul>
					<div class="galry">
						<div class="prices">
							<h5 class="item_price">￥：${p.pprice }</h5>
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
					<p class="qty"> Qty :  </p><input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small">

					<div class="btn_form">
						<!-- <input type="button" class="item_add items" value="添加至购物车"> -->
						<a href="cartCtrl/addToCart?pid=${p.pid }&uid=${user.userid }" class="button">添加至购物车</a>
					</div>

				</div>
				<!-- <div class="col-md-4 single-grid1">
					<h2>Account</h2>
					<ul>
						<li><a href="#">Offers</a></li>
						<li><a href="products.jsp">New products</a></li>
						<li><a href="contact.jsp">Address</a></li>
						<li><a href="checkout.jsp">wishlist</a></li>
						<li><a href="checkout.jsp">Order history</a></li>
					</ul>
				</div> -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- collapse -->
	<div class="collpse tabs">
		<div class="container">
			<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  Description
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
						${p.pinfo }
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							   additional information
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								reviews (5)
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								help
							</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//collapse -->
	<!--related-products-->
	<div class="related-products">
		<div class="container">
			<h3>Related Products</h3>
			<div class="product-model-sec single-product-grids" id="relatedPro">
				<!-- <div class="product-grid single-product">
					<a href="single.jsp">
					<div class="more-product"><span> </span></div>
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m1.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">
						<button>View</button>
						</h4>
						</div>
					</div>
					</a>
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>
							<span class="item_price">$2000</span>
							<div class="ofr">
							  <p class="pric1"><del>$2300</del></p>
							  <p class="disc">[15% Off]</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div> -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--related-products-->
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
</html>