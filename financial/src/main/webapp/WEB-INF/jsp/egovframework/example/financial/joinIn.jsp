<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>다섯번째 페이지</title>
<meta charset="utf-8">
<meta name="viewport" content="width--device-width, initial-scale=1">
<link rel="stylesheet" href="/css/bootstrap/css/bootstrap.min.css">
<script src="/js/jquery-3.5.1.min.js"></script>
<script src="/css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javaScript" language="javascript" defer="defer">
	function list(){
		location.href = "<c:url value='/mainList.do'/>";
	}
</script>


</head>
<body>
	<div class="container">
		<h1>이젠 제발</h1>
		<div class="panel panel-default">
			<div class="panel-heading">
				welcome
			</div>
	<div class="panel-body">
<form class="form-inline" method="post" action="/join.do">

					<div class="form-group">
						<label for="user_id">ID:</label> 
						<input type="text"
							class="form-control" id="user_id" name="userId" value="${financialVO.userId}"/>
					</div>
					
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" name="password">
					</div>

					<div class="form-group">
						<label for="user_name">Name:</label> <input type="text"
							class="form-control" id="user_name" name="userName">
					</div>

					<div class="form-group">
						<label for="age">Age:</label> <input type="text"
							class="form-control" id="age" name="age">
					</div>

					<button type="submit" class="btn btn-default">join in</button>
				</form>
</div>

			<div class="panel-footer">
				<button type="button" class="btn btn-default" onclick="list();">홈</button>
			</div>


		</div>


	</div>
</html>

