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
<title>购物车</title>
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
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

<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 968px;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 88);
	overflow: auto;
}

.white_content {
	display: none;
	position: absolute;
	top: 20%;
	left: 35%;
	width: 30%;
	height: 55%;
	padding: 25px;
	border: 1px solid black;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}
</style>

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
									var userid = data[i].userid;
									var	cartid = data[i].cartid;
									var pname = data[i].pname;
									var pimg = data[i].pimg;
									var pprice = data[i].pprice;
									var picpath = "images/products";
									var a = '<a href="javascript:void(0)" onclick="document.getElementById(\'orderbox\').style.display=\'block\'; document.getElementById(\'fade\').style.display=\'block\';showbox('+userid+',\''+pname+'\')" id="buyit" class="btn btn-primary">购买</a>';
									var b = '<a href="cartCtrl/delProFromCart?pname='+pname+'" class="btn btn-danger">从购车中删除</a>';
									var cList = "<tr><td>cart" + cartid + "</td><td>" + pname + "</td><th><img src=" + picpath +'/'+ pimg +"></th><td>"+'RMB:'
											+ pprice + "</td><td>" + a
											+ "  " + b + "</td></tr>";
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
				<div class="header-right login">
					<a href="user_edit_info.jsp?uid=${cart.userid }"><h3 style="color:#f07818;padding-top:20px;width:120px" >个人信息</h3><span class="glyphicon glyphicon-user"
						aria-hidden="true" id="user_id" style="display: none">${cart.userid }</span></a>
				</div>
				<%-- <span type="text" name="pid" id="user_id" style="display: none" >${cart.userid }</span> --%>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
			<h2>我的购物车</h2>
			<div class="row">
				<div class="col-lg-12 col-md-6">
					<table id="info" class="table table-hover">
							<tr>
								<td>产品编号</td>
								<td>产品名</td>
								<td>产品样图</td>
								<td>价格</td>
								<td>操作</td>
							</tr>
					</table>
				</div>
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

	<!-- 订单框 -->
	<div id="orderbox" class="white_content">
		<a href="javascript:void(0);"
			onclick="javascript:turnoff('orderbox');javascript:turnoff('fade')"
			class="glyphicon glyphicon-remove">点击关闭</a>
		<div class="page ">
			<div class="banneradd bor">
				<h2 align="center">订单信息</h2>
				<br />
				<form method="get" class="form-horizontal"
					action="orderCtrl/showOrder">
					<div class="form-group">
						<label class="col-sm-2 control-label">商品名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pname" name="pname"
								placeholder="商品名" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pprice" name="pprice"
								placeholder="价格" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">收件人姓名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="uname" name="uname"
								placeholder="收件人名字">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">收货地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="uaddress" name="uaddress"
								placeholder="配送地址">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">收件人电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="uphone" name="uphone"
								placeholder="拿快递的人的联系电话">
						</div>
					</div>

					<input type="text" class="form-control" name="pid" id="pid"
						style="display: none">
					<input type="text" class="form-control" name="userid" id="userid"
						style="display: none">
					<div class="form-group">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button
							onclick="javascript:document.getElementById('orderbox').style.display='none';
		document.getElementById('fade').style.display='none'"
							class="btn btn-submit">确认订单信息并付款</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		function turnoff(obj) {
			document.getElementById(obj).style.display = "none";
		}
	</script>
	<script type="text/javascript">
		function showbox(uid,pname) {
			$.ajax({
				url : "cartCtrl/getOrderInfo",
				dataType : "json",
				type : "get",
				contentType : "application/json",
				data : {
					"uid" : uid,
					"pname" : pname
				},
				async : true,
				success : function(result) {
					var uid = result["user"].userid;
					var pid = result["pro1"].pid;
					var pname = result["pro1"].pname;
					var pprice = result["pro1"].pprice;
					var uname = result["user"].uname;
					var uaddress = result["user"].uaddress;
					var uphone = result["user"].uphone;
					//console.log(data);
					//$("#editbox input").val(""); //清空数据
					$("#userid").val(uid);
					$("#pid").val(pid);
					$("#pname").val(pname);
					$("#pprice").val(pprice);
					$("#uname").val(uname);
					$("#uaddress").val(uaddress);
					$("#uphone").val(uphone);
				},
				// 请求出错时调用的函数
				error : function() {
					alert("数据发送失败");
				}
			});
		}
	</script>
		<div id="fade" class="black_overlay"></div>

	<div class="footer-bottom">
		<div class="container">
			<p>DESIGNED BY WANGWEI.</p>
		</div>
	</div>
</body>
</html>