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
			<h1 class="display-2 my-5">Welcome User!</h1>
			<button class="btn btn-sm btn-primary mt-4 mx-2" onclick="checkCount()">Check Count</button>
			<button class="btn btn-sm btn-info mt-4 mx-2" onclick="goAdd2()">Add 2</button>
			<button class="btn btn-sm btn-light mt-4 mx-2" onclick="reset()">Reset</button>
		</div>
	</div>
</body>
</html>