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
<title>Simple Responsive Admin</title>
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
									var a = '<a href="javascript:void(0)" id="xiugai" class="btn btn-primary">修改</a>';
									var b = '<a href="javascript:void(0)" class="btn btn-danger">删除</a>';
									var OrderList = "<tr><th>"
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
						src="images/logo.jpg" />
					</a>
				</div>
				<span class="logout-spn"><a href="#" style="color: #fff;">LOGOUT</a></span>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="admin_index.jsp"><i
							class="fa fa-desktop "></i>个人信息 <span class="badge">Included</span></a>
					</li>
					<li><a href="admin_product_manage.jsp"><i
							class="fa fa-table "></i>商品管理 <span class="badge">Included</span></a>
					</li>
					<li><a href="admin_user_manage.jsp"><i class="fa fa-edit "></i>用户管理
							 <span class="badge">Included</span></a></li>
					<li class="active-link"><a href="admin_order_manage.jsp"><i class="fa fa-qrcode "></i>订单管理</a></li>
					</li>
				</ul>
			</div>
		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Orders Information</h2>
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
 					<div class="col-lg-6 col-md-6">
						<h5>订单信息：</h5>
						<table id="info" class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
										<th>编号</th>
										<th>用户名</th>
										<th>邮箱</th>
										<th>电话</th>
										<th>邮寄地址</th>
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
						<h5>Panel Sample</h5>
						<div class="panel panel-primary">
							<div class="panel-heading">Default Panel</div>
							<div class="panel-body">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Vestibulum tincidunt est vitae ultrices accumsan. Aliquam
									ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
							</div>
							<div class="panel-footer">Panel Footer</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<div class="footer">

		<div class="row">
			<div class="col-lg-12">
				xxx
			</div>
		</div>
	</div>

	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="js/jquery.min.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="js/bootstrap-3.1.1.min.js"></script>
	<!-- CUSTOM SCRIPTS -->
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
					var a = '<a href="javascript:void(0)" id="xiugai" class="btn btn-primary">修改</a>';
					var b = '<a href="orderCtrl/delOrder?orid='+oid1+'" class="btn btn-danger">删除</a>';
					var pro_s = "<tr><th>"
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
