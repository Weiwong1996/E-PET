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
<title>Products</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->

<script type="text/javascript">
	// 商品在div中循环遍历
	window.onload = (function() {
		var htm = "";
		var uid = $("#uid").text();
			$.ajax({
					type : "get",
					url : "productCtrl/Pageindex",
					contentType : "application/json",
					data : {

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
									htm += '<div class="product-grid">';
									htm += '<a href="productCtrl/singlePro?pid='+ pid +'&uid='+uid+' ">';
									htm += '<div class="more-product"><span></span></div>';
									htm += '<div class="product-img b-link-stripe b-animate-go  thickbox">';
									htm += '<img src="images/products/' + pimg + '" class="img-responsive" alt="">';
									htm += '<div class="b-wrapper">';
									htm += '<h4 class="b-animate b-from-left b-delay03">';
									htm += '<button>View</button>';
									htm += '</h4>';
									htm += '</div>';
									htm += '</div>';
									htm += '</a>';
									htm += '<div class="product-info simpleCart_shelfItem">';
									htm += '<div class="product-info-cust prt_name">';
									htm += '<h4 id="pname">' + pname + '</h4>';
									htm += '<span class="item_price">￥：' + pprice + '</span>';
									htm += '<div class="ofr">';
									htm += '<p class="pric1"><del>$2300.00</del></p>';
									htm += '<p class="disc">[15% Off]</p>';
									htm += '</div>';
									htm += '<input type="text" class="item_quantity" value="1" />';
									htm += '<input type="button" class="item_add items" value="Add" onclick="+ add_to_cart(pid) + " />';
									htm += '<div class="clearfix"> </div>';
									htm += '</div>';
									htm += '</div>';
									htm += '</div>';
									$('#prodiv').html(htm);
								},
						);
					},
					async : true,
				});
	});
</script>

<!-- 添加到购物车的按钮 -->
<!-- <script type="text/javascript">
	function add_to_cart(pid) {

		var uid = $("#uid").text();
		alert(uid);
		alert(pid);

		$.ajax({
					url:"productCtrl/addtoCart",
					dataType : "json", // 预期服务器返回的数据类型。
					type : "post", //  请求方式 POST或GET
					contentType : "application/json", //  发送信息至服务器时的内容编码类型
					// 发送到服务器的数据。
					data : JSON.stringify({
						uid : uid,
						pid : pid
					}),
					async : true, // 默认设置下，所有请求均为异步请求。如果设置为false，则发送同步请求
					// 请求成功后的回调函数。
					success : function(data) {
						  console.log(data);
							/* $("#light1 input").val(""); //清空数据
							$("#light1 input[name=cname]").val(data.cname);
							$("#light1 input[name=ccourse]").val(data.ccourse);
							$("#light1 input[name=cworkyear]").val(data.cworkyear);
							$("#light1 input[name=clevel]").val(data.clevel);
							$("#light1 input[name=cprice]").val(data.cprice);
							$("#light1 input[name=cid]").val(data.cid); */
					},
					// 请求出错时调用的函数
					error : function() {
						alert("数据发送失败");
					}
				});

	}
</script> -->

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

				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.jsp">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>

				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true" id="uname">${user.uname}</span></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--products-->
	<div class="products">
		<div class="container">
			<h2>Our Products</h2>
			<div id="prodiv" class="col-md-9 product-model-sec">
<!-- 				<div class="product-grid">
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
							<h4 id="pname"></h4>
							<span class="item_price">$2000.00</span>
							<div class="ofr">
								<p class="pric1"><del>$2300.00</del></p>
								<p class="disc">[15% Off]</p>
							</div>
							<input type="text" class="item_quantity" value="1" />
							<input type="button" class="item_add items" value="Add">
							<div class="clearfix"> </div>
						</div>
					</div>
				</div> -->
			</div>

			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						<div class="tab1">
							<ul class="place">
								<li class="sort">Dogs</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>a</p></a>
								<a href="#"><p>b</p></a>
								<a href="#"><p>c</p></a>
								<a href="#"><p>d</p></a>
						    </div>
					    </div>
						<div class="tab2">
							<ul class="place">
								<li class="sort">Cats</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Delicious Cakes</p></a>
								<a href="#"><p>Gingerbread</p></a>
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">
								<li class="sort">Dog’s food</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Milk Cakes</p></a>
								<a href="#"><p>Fruits Cakes</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">
								<li class="sort">Cat’s food</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Twist 4 tier</p></a>
								<a href="#"><p>Floral Tier</p></a>
								<a href="#"><p>Double Heartshape</p></a>
						    </div>
					    </div>
 						<!-- script -->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();

								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
							});
						</script>
						<!-- script -->
					</div>
				</section>
				</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//products-->
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
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p><p id="uid" style="visibility:hidden">${user.userid}</p>
		</div>
	</div>
</body>
</html>