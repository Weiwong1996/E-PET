<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 
<head>
   
<base href="<%=basePath%>">
       
<title>ERROR 500!</title>       
<link rel="icon" type="image/x-icon" href="images/logo.png"/>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="pragma" content="no-cache">
  
<meta http-equiv="cache-control" content="no-cache">
  
<meta http-equiv="expires" content="0">
      
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  
<meta http-equiv="description" content="This is my page">
 

</head>
 
<body>
	<a href=""><img title="点击返回首页" src="images/errorpage/500.jpg" /></a>  
</body>
</html>