<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>订单管理</title>
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
<!-- BOOTSTRAP STYLES-->
<link href="css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="js/bootstrap-3.1.1.min.js"></script>

<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
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
	top: 25%;
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
	//显示出全部订单
	window.onload = (function() {
			$.ajax({
					type : "get",
					url : "orderCtrl/allOrders",
					contentType : "application/json",
					data : {

					},
					dataType : "json",
					success : function(data) {
						//console.log(data);
						var info = "";
						$.each(
								data,
								function(i, n) {
									var oid = data[i].orderid;
									var uname = data[i].uname;
									var oprice = data[i].oprice;
									var uaddress = data[i].uaddress;
									var uphone = data[i].uphone;
									var a = '<a href="javascript:void(0)" onclick="document.getElementById(\'editbox\').style.display=\'block\'; document.getElementById(\'fade\').style.display=\'block\';showbox('+oid+')" id="xiugai" class="btn btn-primary">修改</a>';
									var b = '<a href="orderCtrl/delOrder?orid='+oid+'" class="btn btn-danger">删除</a>';
									var OrderList = "<tr><th>EPETorder2019"
											+ oid
											+ "</th><th>"+uname+"</th><th>"
											+ oprice + "</th><th>"
											+ uaddress + "</th><th>"
											+ uphone + "</th><th>" + a
											+ "  " + b + "</th></tr>";
									$("#info tr:eq(0)")
											.after(OrderList);
								});
					},
					async : true
				});
	});
</script>

</head>
<body>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"> <img
						src="images/logo.png" />
					</a>
				</div>
				<span class="logout-spn"><a href="index.jsp" style="color: #fff;">LOGOUT</a></span>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="admin_index.jsp"><i
							class="glyphicon glyphicon-edit "></i>个人信息 </a>
					</li>
					<li><a href="admin_add_product.jsp"><i
							class="glyphicon glyphicon-plus "></i>添加商品 </a>
					</li>
					<li><a href="admin_product_manage.jsp"><i
							class="glyphicon glyphicon-gift "></i>商品管理 </a>
					</li>
					<li><a href="admin_user_manage.jsp"><i class="glyphicon glyphicon-list-alt "></i>用户管理
							 </a></li>
					<li class="active-link"><a href="admin_order_manage.jsp"><i class="glyphicon glyphicon-shopping-cart "></i>订单管理</a></li>
					</li>
				</ul>
			</div>
		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>订单信息管理</h2>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="form-group">
							<label>检索</label>
							<form class="form-inline">
								<input type="text" class="form-control" placeholder="输入订单编号进行查找" name="o_id" />
								<button id="search" class="btn btn-default" type="button">查询</button>
							</form>
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
 					<div class="col-lg-12 col-md-6">
						<h5>订单信息：</h5>
						<table id="info" class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
										<th>订单编号</th>
										<th>用户名</th>
										<th>订单金额</th>
										<th>邮寄地址</th>
										<th>电话</th>
										<th>操作</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="panel panel-primary">
							<div class="panel-heading">温馨提醒</div>
							<div class="panel-body">
								<p>对用户在前端商城系统产生的订单进行管理。得到用户授权的情况下，对订单信息进行修改。</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改框 -->
	<div id="editbox" class="white_content">
		<a href="javascript:void(0);"
			onclick="javascript:turnoff('editbox');javascript:turnoff('fade')"
			class="glyphicon glyphicon-remove">点击关闭</a>
		<div class="page ">
			<div class="banneradd bor">
				<h2 align="center">修改订单信息</h2>
				<br />
				<form method="get" class="form-horizontal"
					action="orderCtrl/editOrder">
					<div class="form-group">
						<label class="col-sm-2 control-label">订单号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="oid" name="oid"
								placeholder="订单号" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="uname" name="uname"
								placeholder="用户名">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="uphone" name="uphone"
								placeholder="收件电话">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">邮寄地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="uaddress" name="uaddress"
								placeholder="用户收货地址">
						</div>
					</div>
					<!-- <input type="text" class="form-control" name="pid" id="pid"
						style="display: none"> -->
					<div class="form-group">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button
							onclick="javascript:document.getElementById('edituser').style.display='none';
		document.getElementById('fade').style.display='none'"
							class="btn btn-submit">修改</button>
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
		function showbox(oid) {
			$.ajax({
				url : "orderCtrl/getOrderById",
				dataType : "json",
				type : "get",
				contentType : "application/json",
				data : {
					"o_id" : oid
				},
				async : true,
				success : function(data) {
					console.log(data);
					//$("#editbox input").val(""); //清空数据
					$("#oid").val(data.orderid);
					$("#uname").val(data.uname);
					$("#uphone").val(data.uphone);
					$("#uaddress").val(data.uaddress);
				},
				//请求出错时调用的函数
				error : function() {
					alert("数据发送失败");
				}
			});
		}
	</script>
	<div id="fade" class="black_overlay"></div>

	<div class="footer">

		<div class="row">
			<div class="col-lg-12">
				designed by wangwei
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-3.1.1.min.js"></script>
	<script src="js/custom.js"></script>

	<script type="text/javascript">
	//按ID查找用户
	$("#search").click(function(){
		var oid=$("input[name=o_id]").val();
		console.log(oid);
		console.log(oid+"-----------------");
	  	$.ajax({
			type:"get",
			url:"orderCtrl/getOrderById",
			contentType:"application/json",
			data:{
				"o_id":oid,
			},
			dataType:"json",
			success: function(data){
				console.log("-----------------");
				console.log(data);
				  $("#info tr:gt(0)").html("");
				  	var oid1 = data.orderid;
					var uname = data.uname;
					var oprice = data.oprice;
					var uaddress = data.uaddress;
					var uphone = data.uphone;
					var a = '<a href="javascript:void(0)" onclick="document.getElementById(\'editbox\').style.display=\'block\'; document.getElementById(\'fade\').style.display=\'block\';showbox('+oid+')" id="xiugai" class="btn btn-primary">修改</a>';
					var b = '<a href="orderCtrl/delOrder?orid='+oid1+'" class="btn btn-danger">删除</a>';
					var pro_s = "<tr><th>EPETorder2019"
							+ oid1
							+ "</th><th>"+uname+"</th><th>"
							+ oprice + "</th><th>"
							+ uaddress + "</th><th>"
							+ uphone + "</th><th>" + a
							+ "  " + b + "</th></tr>";
					$("#info tr:eq(0)")
							.after(pro_s);
			},
			async:true
		});
	});
</script>

</body>
</html>
