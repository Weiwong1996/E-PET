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
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
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
									htm += '<p class="pric1"><del>￥：' + pprice*1.2 + '</del></p>';
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

<script type="text/javascript">
	// 分页
	function fenye(pageno){
		//alert(pageno);
		var htm = "";
		var uid = $("#uid").text();
			$.ajax({
					type : "get",
					url : "productCtrl/Pageindex?currentPage="+pageno,
					contentType : "application/json",
					data : {

					},
					dataType : "json",
 					success : function(data) {
 						//alert(data);
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
									htm += '<p class="pric1"><del>￥：' + pprice + '</del></p>';
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
	}
</script>

<!-- 按条件查询 -->
<script type="text/javascript">
	function searchBytype(type){
		var uid = $("#uid").text();
		//alert(uid);
		var htm ="";
		$.ajax({
			type:"get",
			url:"productCtrl/searchBytype?type="+type,
			contentType : "application/json",
			data:{
				uid :uid
			},
			dataType : "json",
			success:function(data){
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
							htm += '<p class="pric1"><del>￥：' + pprice + '</del></p>';
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
	}
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
											<li><a class="list" href="javascript:void(0);">博美</a></li>
											<li><a class="list" href="#">泰迪</a></li>
											<li><a class="list" href="#">柯基</a></li>
											<li><a class="list" href="#">阿拉斯加</a></li>
											<li><a class="list" href="#">金毛</a></li>
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

				<div class="header-right cart">
					<a href="checkout.jsp"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.jsp">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="header-right login">
					<a href="user_edit_info.jsp?uid=${user.userid }"><span class="glyphicon glyphicon-user" aria-hidden="true" id="uname">${user.uname}</span></a>
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
			<!-- 此处为遍历结果 -->

			</div>
			<div style="position: absolute; bottom: 0; left: 56.5%; transform: translate(-50%, -50%);">
				<nav aria-label="...">
					<ul class="pager">
					<li><a href="javascript:void(0);" onclick="fenye(${currentPage-1})">上一页</a></li>
					<li><a href="javascript:void(0);" onclick="fenye(${currentPage+1})">下一页</a></li>
						<%-- <li><a href="productCtrl/Pageindex?currentPage=${currentPage-1}">上一页 </a></li>
						<li><a href="productCtrl/Pageindex?currentPage=${currentPage+1}">下一页</a></li> --%>
					</ul>
				</nav>
			</div>
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>分类查找</h4>
						<div class="tab1">
							<ul class="place">
								<li class="sort">Dogs</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="javascript:void(0);" onclick="searchBytype('博美')"><p id="bomei">博美</p></a>
								<a href="javascript:void(0);" onclick="searchBytype('哈士奇')"><p id="hashiqi">哈士奇</p></a>
								<a href="javascript:void(0);" onclick="searchBytype('柴犬')"><p id="chaiquan">柴犬</p></a>
								<a href="javascript:void(0);" onclick="searchBytype('萨摩耶')"><p id="samoye">萨摩耶</p></a>
						    </div>
					    </div>
						<div class="tab2">
							<ul class="place">
								<li class="sort">Cats</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="javascript:void(0);" onclick="searchBytype('布偶猫')"><p id="buo">布偶猫</p></a>
								<a href="javascript:void(0);" onclick="searchBytype('折耳猫')"><p id="zheer">折耳猫</p></a>
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">
								<li class="sort">Dog’s food</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="javascript:void(0);" onclick="searchBytype('狗粮')"><p id="gouliang">狗粮</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">
								<li class="sort">Cat’s food</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="javascript:void(0);" onclick="searchBytype('猫粮')"><p id="maoliang">猫粮</p></a>
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
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>DESIGNED BY WANGWEI</p><p id="uid" style="visibility:hidden">${user.userid}</p>
		</div>
	</div>
</body>
</html>