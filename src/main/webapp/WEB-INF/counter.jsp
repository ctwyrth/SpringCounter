<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Counter</title>
	
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
	
	<script type="text/javascript" src="/js/script.js"></script>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid">
		<div class="container text-center mx-auto my-5 py-5">
			<h1 class="display-4 my-5">You have visited <a href="http://localhost:8080/">http://your_server</a> <c:out value="${count}" /> times.</h1>
			<button class="btn btn-sm btn-success mt-4 mx-2" onclick="goHome()">Home</button>
			<button class="btn btn-sm btn-danger mt-4 mx-2" onclick="reset2()">Reset & Stay</button>
		</div>
	</div>
</body>
</html>