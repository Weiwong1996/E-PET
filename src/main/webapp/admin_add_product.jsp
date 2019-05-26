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
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="admin_index.jsp"><i
							class="glyphicon glyphicon-edit "></i>个人信息 </a>
					</li>
					<li class="active-link"><a href="admin_add_product.jsp"><i
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
		<div id="page-wrapper" >
			<div id="page-inner"style="padding-left:30%">
				<div class="row">
					<div class="col-lg-12" style="padding-left:16%">
						<h2>添加商品</h2>
					</div>
				</div>
				<form action="adminCtrl/addproduct" method="post">
					<div class="form-group">
						<label for="pname">商品名称</label> <input
							type="text" class="form-control" name="pname"
							placeholder="商品名称">
					</div>
					<div class="form-group">
						<label for="">商品样图</label> <input
							type="file" name="pimg">
						<p class="help-block">Example block-level help text here.</p>
					</div>
					<div class="form-group">
						<label for="pprice">定价</label> <input
							type="text" class="form-control" name="pprice"
							placeholder="商品价格">
					</div>
					<div class="form-group">
						<label for="ptype">商品类型</label> <input
							type="text" class="form-control" name="ptype"
							placeholder="商品所属的类型">
					</div>
					<div class="form-group">
						<label for="pinfo">商品详情</label> <input
							type="text" class="form-control" name="pinfo"
							placeholder="商品详情，商品描述">
					</div>
					<div class="form-group">
						<label for="pstatu">商品状态</label> <input
							type="text" class="form-control" name="pstatu"
							placeholder="现在的状态，日期等...">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"> 确认无误？
						</label>
					</div>
					<button type="submit" class="btn btn-primary" style="margin-left:15%;width:100px;height:40px">添加</button>
				</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="row">
			<div class="col-lg-12">designed by wangwei</div>
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
	<script src="js/jquery.min.js"></script>
	<script src="js/calendar.js"></script>

</body>
</html>
