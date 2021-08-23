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
        function add(){
        location.href = "<c:url value='/mgmt.do'/>";
        }
        function view(){
        	location.href = "<c:url value='/view.do'/>";
        	}
     	function setPwd(user_id){
    		if( user_id =="admin"){
    			$("#password").val("1234")
    		}else if( user_id =="guest"){
    			$("#password").val("1234")
    		}else{
    			$("#password").val("")
    		}
    	}
     	 function check(){
             if( $("#user_id").val() ==""){
             alert("아이디를 입력하세요");
             return false;
             }
             if( $("#password").val() ==""){
             alert("비밀번호를 입력하세요");
             return false;
             }
             return true;
             }
     	$( document).ready( function(){
     		<c:if test="${!empty msg}">
     		alert("${msg}");
     		</c:if>
     		})
     		
     		function add(){
     		location.href = "<c:url value='/mgmt.do'/>";
     		}
     	function out(){
     		location.href ="<c:url value='/logout.do'/>";
     		}
     	
     	function joinIn(){
     		location.href ="<c:url value='/joinIn.do'/>";
     		}
     	function google(){
     		location.href ="<c:url value='/google.do'/>";
     		}



        </script>
	

</head>
<body>
<div class="container">
    <h1> 이젠 제발 </h1>
    <div class="panel panel-default">

			<div class="panel-heading">
			<c:if test = "${sessionScope.userId ==null || sessionScope.userId == '' }"> 
			
				<form class="form-inline" method="post" action="/login.do">
					
				
					<div class="form-group">					
						<label for="id">ID:</label> <input type="text" class="form-control" id="user_id" name="user_id" onchange="setPwd(this.value);">
					</div>
					
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
class="form-control" id="password" name="password">
					</div>
					<button type="submit" class="btn btn-default" onclick="return check();">로그인</button>
		
				</form>
					<button type="submit" class="btn btn-default" onclick="joinIn();">회원가입</button>
					</c:if>
					<c:if test = "${sessionScope.userId !=null && sessionScope.userId !='' }">
					${sessionScope.userName }님 환영합니다
					<button type = "button" class ="btn btn-default" onclick="out();"> 로그아웃</button>
					</c:if>
					
	
				</div>


			<div class="panel-body">
		
			</div>

  <div class="panel-footer">
    <c:if test="${!empty sessionScope.userId }">
<button type="button" class="btn btn-default" onclick="add();">예금</button>
<button type="button" class="btn btn-default" onclick="add();">적금</button>
<button type="button" class="btn btn-default" onclick="add();">대출</button>
<button type="button" class="btn btn-default" onclick="google();">구글</button>
</c:if>
</div>


    </div>
</div>

</body>
</html>