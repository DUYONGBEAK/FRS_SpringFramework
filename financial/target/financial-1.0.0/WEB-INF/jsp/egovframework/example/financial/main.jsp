<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>FRS</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link ="stylesheet" type="text/css" href="/css/fontawesome.min.css">
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Background Video-->
        <video class="bg-video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop"><source src="assets/mp4/bg.mp4" type="video/mp4" /></video>
        <!-- Masthead-->
        <div class="masthead">
            <div class="masthead-content text-white">
                <div class="container-fluid px-4 px-lg-0">
                    <h1 class="fst-italic lh-1 mb-4">Financial Products Recommendation Service</h1>
                    <p class="mb-5">After a simple membership registration, you can receive financial product recommendations.</p>
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- * * SB Forms Contact Form * *-->
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- This form is pre-integrated with SB Forms.-->
                    <!-- To make this form functional, sign up at-->
                    <!-- https://startbootstrap.com/solution/contact-forms-->
                    <!-- to get an API token!-->
                        <!-- Email address input-->
                        <c:if test="${sessionScope.userId ==null || sessionScope.userId == '' }">
                        <form method="post" action="/login.do">
                        <div class="row input-group-newsletter">
                            <div class="col">
                            <input class="form-control" id="id" name="id" type="text" placeholder="id" />
                            <input class="form-control" id="pw" name="pw" type="password" placeholder="password"/>
                            </div>
                        </div><br/>
                        <div class="row input-group-newsletter">
                        	<div class="col-auto"><button class="btn btn-primary" id="login" type="submit">Login</button></div>
                        	<div class="col-auto"><button class="btn btn-primary" id="signup" type="button" onclick="moveFun();">Sign Up</button></div>
                        </div>
                        </form>
                		</c:if>
                		<c:if test="${sessionScope.userId !=null && sessionScope.userId !='' }">
								<p>${sessionScope.userName }님 환영합니다.</p>
						<button type="button" class="btn btn-primary" onclick="out();">Logout</button>
						<button type="button" class="btn btn-primary" onclick="update();">Update my account</button>
						<button type="button" class="btn btn-primary" onclick="quit();">Delete account</button>
						
			</c:if>
                </div>
            </div>
        </div>
        <!-- Social Icons-->
        <!-- For more icon options, visit https://fontawesome.com/icons?d=gallery&p=2&s=brands-->
        <div class="social-icons">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/deposit.do">Deposit<i class="fa fa-book fa-fw" aria-hidden="true"></i></a>
                <a class="btn btn-dark m-3" href="/savings.do">Savings<i class="fa fa-book fa-fw" aria-hidden="true"></i></a>
                <a class="btn btn-dark m-3" href="/loan.do">Loan<i class="fa fa-book fa-fw" aria-hidden="true"></i></a>
                <a class="btn btn-dark m-3" href="https://www.google.co.kr/"><i class="fab fa-google" aria-hidden="true"></i>oogle</a>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="/js/jquery-3.5.1.min.js"></script>
		<script src="/css/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javaScript" defer="defer">
        function moveFun(){
        	location.href = "<c:url value='/signup.do'/>";
        }
   	 	function out(){
		 	location.href ="<c:url value='/logout.do'/>";
		 }
   	 	function quit(){
		 	location.href ="<c:url value='/quit.do'/>";
		 }
   	 	function update(){
		 	location.href ="<c:url value='/update.do'/>";
		 }
        </script>
        
    </body>
</html>