<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>管理员首页</title>
<link rel="icon" type="image/x-icon" href="images/logo.png"/>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link href="css/calendar.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

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
					<a class="navbar-brand" href="#"> <img src="images/logo.png" />
					</a>
				</div>
				<span class="logout-spn"><a href="index.jsp" style="color: #fff;">LOGOUT</a></span>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="active-link"><a href="admin_index.jsp"><i
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
					<li><a href="admin_order_manage.jsp"><i
							class="glyphicon glyphicon-shopping-cart "></i>订单管理</a></li>
				</ul>
			</div>
		</nav>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<h2>个人信息</h2>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-lg-12 ">
						<div class="alert alert-info">
							<strong>Welcome <span id="admin"> ${admin.aname}.
							</span></strong> Have a nice day.
						</div>
					</div>
				</div>
				<form class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label">用戶名：</label>
						<div class="col-sm-10">
							<p class="form-control-static">${admin.aname}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Email：</label>
						<div class="col-sm-10">
							<p class="form-control-static">weiwong0910@163com</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">电话：</label>
						<div class="col-sm-10">
							<p class="form-control-static">${admin.aphonenum}</p>
						</div>
					</div>
				</form>
				<hr />
				<div class="col-lg-12">
						<h2>日历</h2>
					</div>
				<div id="calendar" class="calendar"></div>

				<div style="text-align: center; clear: both">
 				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="row">
			<div class="col-lg-12">designed by wangwei</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-3.1.1.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/calendar.js"></script>

</body>
</html>
