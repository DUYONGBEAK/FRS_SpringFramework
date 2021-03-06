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
				<form class="form-inline" action="/login.do">
					<div class="form-group">
						<label for="id">아이디:</label> <input type="text"
							class="form-control" id="id">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd">
					</div>
					<button type="submit" class="btn btn-default">로그인</button>
				</form>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" method="post" action="/">
					<div class="form-group">
						<label class="control-label col-sm-2" for="idx">게시물아이디:</label>
						<div class="col-sm-10 control-label" style="text-align: left;">
							게시물아이디</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">제목:</label>
						<div class="col-sm-10 control-label" style="text-align: left;">
							제목</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">등록자/등록일:</label>
						<div class="col-sm-10 control-label" style="text-align: left;">
							등록자/등록일</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">내용:</label>
						<div class="col-sm-10 control-label" style="text-align: left;">
							내용</div>
					</div>
				</form>
			</div>







			<div class="panel-footer">
<c:if test="${!empty sessionScope.userId }">
<button type="button" class="btn btn-default">수정</button>
<button type="button" class="btn btn-default">삭제</button>
</c:if>
<button type="button" class="btn btn-default" onclick="list();">목록</button>
</div>


		</div>

		<div class="well well-sm">작성자/작성일</div>
		<div class="well well-lg">
			<form class="form-horizontal" method="post" action="/reply.do">
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">작성자/작성일:</label>
					<div class="col-sm-10 control-label" style="text-align: left;">
						<input type="text" class="form-control" id="writer" name="writer"
							placeholder="작성자를 입력하세요" maxLength="15"
							style="float: left; width: 40%"> <input type="text"
							class="form-control" id="indate" name="indate"
							placeholder="작성일을 입력하세요" maxLength="10"
							style="float: left; width: 40%">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">내용:</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3" id="reply" name="reply"
							maxlength="300"></textarea>
					</div>
				</div>
				<button type="button" class="btn btn-default">작성</button>
			</form>
		</div>
	</div>
</html>

