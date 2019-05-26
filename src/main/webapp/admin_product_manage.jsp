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
<title>商品管理</title>
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

<script type="text/javascript">
	//显示出全部用户
	window.onload = (function() {
			$.ajax({
					type : "get",
					url : "adminCtrl/allProduct",
					contentType : "application/json",
					data : {

					},
					dataType : "json",
					success : function(data) {
						//console.log(data);
						var info = "";
						$.each(data,function(i, n) {
									var pid = data[i].pid;
									var pname = data[i].pname;
									var pimg = data[i].pimg;
									var pprice = data[i].pprice;
									var ptype = data[i].ptype;
									var pinfo = data[i].pinfo;
									/* var upwd = data[i].upwd; */
									var a = '<a href="javascript:void(0)" onclick="document.getElementById(\'editbox\').style.display=\'block\'; document.getElementById(\'fade\').style.display=\'block\';showbox('+pid+')" id="xiugai" class="btn btn-primary">修改</a>';
									var b = '<a href="productCtrl/delProduct?proid='+pid+'" class="btn btn-danger">删除</a>';
									var pList = "<tr><th>EPETproduct"
											+ pid
											+ "</th><th>" + pname + "</th><th>"
											+ pimg + "</th><th>"
											+ pprice + "</th><th>"
											+ ptype + "</th><th>" + pinfo +"</th><th>" + a
											+ "  " + b + "</th></tr>";
									$("#info tr:eq(0)")
											.after(pList);
								});
					},
					async : true
				});
	});
</script>

<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 1761px;
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
				<span class="logout-spn"> <a href="index.jsp" style="color: #fff;">LOGOUT</a>
				</span>
			</div>
		</div>
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="admin_index.jsp"><i class="glyphicon glyphicon-edit "></i>个人信息
							</a></li>
					<li><a href="admin_add_product.jsp"><i
							class="glyphicon glyphicon-plus "></i>添加商品 </a>
					</li>
					<li class="active-link"><a href="admin_product_manage.jsp"><i
							class="glyphicon glyphicon-gift "></i>商品管理 </a>
					</li>
					<li><a href="admin_user_manage.jsp"><i class="glyphicon glyphicon-list-alt "></i>用户管理
							</a></li>
					<li><a href="admin_order_manage.jsp"><i
							class="glyphicon glyphicon-shopping-cart "></i>订单管理</a></li>
					</li>
				</ul>
			</div>
		</nav>
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>产品信息管理</h2>
					</div>
				</div>

				<hr>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="form-group">
							<label>检索</label>
							<form class="form-inline">
								<input type="text" class="form-control" placeholder="输入编号" name="p_id" />
								<button type="button" id="search" class="btn btn-default">查询</button>
							</form>
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
 					<div class="col-lg-12 col-md-6">
						<h5>商品信息：</h5>
						<table id="info" class="table table-striped table-bordered table-hover">
							<thead>
									<tr>
										<th>产品编号</th>
										<th>产品名</th>
										<th>样图</th>
										<th>价格</th>
										<th>类型</th>
										<th>介绍</th>
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
								<p>您可以在这里对商城系统的商品进行管理，对系统的商品进行更新。</p>
							</div>
							<!-- <div class="panel-footer">Panel Footer</div> -->
						</div>
					</div>
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

	</script>
	<script type="text/javascript">
	//按ID查找用户
	$("#search").click(function(){
		var pid=$("input[name=p_id]").val();
		//console.log(pid);
		//console.log(pid+"-----------------");
	  	$.ajax({
			type:"get",
			url:"productCtrl/getproById",
			contentType:"application/json",
			data:{
				"p_id":pid,
			},
			dataType:"json",
			success: function(data){
				console.log("-----------------");
				console.log(data);
				  $("#info tr:gt(0)").html("");
				  	var pid1 = data.pid;
					var pname = data.pname;
					var pimg = data.pimg;
					var pprice = data.pprice;
					var ptype = data.ptype;
					var pinfo = data.pinfo;
					/* var upwd = data[i].upwd; */
					var a = '<a href="javascript:void(0)" onclick="document.getElementById(\'editbox\').style.display=\'block\'; document.getElementById(\'fade\').style.display=\'block\';showbox('+pid+')" id="xiugai" class="btn btn-primary">修改</a>';
					var b = '<a href="productCtrl/delProduct?proid='+pid1+'" class="btn btn-danger">删除</a>';
					var products = "<tr><th>EPETproduct"
							+ pid1
							+ "</th><th>"+pname+"</th><th>"
							+ pimg + "</th><th>"
							+ pprice + "</th><th>"
							+ ptype + "</th><th>"
							+ pinfo + "</th><th>" + a
							+ "  " + b + "</th></tr>";
					$("#info tr:eq(0)")
							.after(products);
			},
			async:true
		});
	});
</script>

<!-- 修改框 -->
<div id="editbox" class="white_content">
<a href="javascript:void(0);" onclick="javascript:turnoff('editbox');javascript:turnoff('fade')" class="glyphicon glyphicon-remove">点击关闭</a>
		<div class="page ">
			<div class="banneradd bor">
					<h2 align="center">修改商品信息</h2>
					<br />
				<form method="get" class="form-horizontal"
					action="adminCtrl/editPro">
					<div class="form-group">
						<label class="col-sm-2 control-label">产品名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pname" name="pname"
								placeholder="商品名">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pprice" name="pprice"
								placeholder="重新定价">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">类型</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="ptype" name="ptype"
								placeholder="商品类型">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">介绍</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pinfo" name="pinfo"
								placeholder="商品的详情">
						</div>
					</div>
					<input type="text" class="form-control" name="pid" id="pid"
						style="display: none">
					<div class="form-group">
							&nbsp;&nbsp;&nbsp;&nbsp;<button
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
		function showbox(pid){
			$.ajax({
						url : "productCtrl/getproById",
						dataType : "json",
						type : "get",
						contentType : "application/json",
						data : {
							"p_id" : pid
						},
						async : true,
						success : function(data) {
							  console.log(data);
								//$("#editbox input").val(""); //清空数据
								$("#editbox input[name=pid]").val(data.pid);
								$("#editbox input[name=pname]").val(data.pname);
								$("#editbox input[name=pprice]").val(data.pprice);
								$("#editbox input[name=ptype]").val(data.ptype);
								$("#editbox input[name=pinfo]").val(data.pinfo);
						},
						// 请求出错时调用的函数
						error : function() {
							alert("数据发送失败");
						}
					});
		}
</script>
	<div id="fade" class="black_overlay"></div>


</body>
</html>
