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
                      <c:if test="${sessionScope.userId !=null && sessionScope.userId !='' }">
								<p style = "display:inline">${sessionScope.userName }님 환영합니다.</p>
						<button type="button" class="btn btn-primary" onclick="out();">Logout</button>
						<br/><br/>
                    <h2 class="fst-italic lh-1 mb-4">Please enter your information</h2>
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- * * SB Forms Contact Form * *-->
                    <!-- * * * * * * * * * * * * * * *-->
                    <!-- This form is pre-integrated with SB Forms.-->
                    <!-- To make this form functional, sign up at-->
                    <!-- https://startbootstrap.com/solution/contact-forms-->
                    <!-- to get an API token!-->
                        <!-- Email address input-->

                    <div class="col">

                    <form class="form-inline" method="post" onsubmit="return true" action="/resultD.do">
                            가입대상 : <input type="radio" name="object" value="P"
						checked>개인 <input type="radio" name="object" value="PB">개인사업자<input
						type="radio" name="object" value="O">법인 <input
						type="radio" name="object" value="C">기타 임의단체<br /> <br />
					가입연령 : <input type="radio" name="age" value="20" checked>20대<input
						type="radio" name="age" value="30">30대 <input type="radio"
						name="age" value="40">40대 <input type="radio" name="age"
						value="50">50대 <input type="radio" name="age" value="60">60대<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="age" value="70">70대 <input
						type="radio" name="age" value="80">80대 <input type="radio"
						name="age" value="90">90대 <input type="radio" name="age"
						value="100">100세 이상 <br /> <br /> 예치금액 :<input
						type="radio" name="depositMoney" value="10000~1000000" checked>만원~백만원 <input type="radio" name="depositMoney"
						value="1000000~3000000">백만원~삼백만원 <input type="radio"
						name="depositMoney" value="3000000~5000000">삼백만원~오백만원 <br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="depositMoney" value="5000000~10000000">오백만원~천만원 
					<input type="radio" name="depositMoney" value="10000000~30000000">천만원~삼천만원<br /> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="depositMoney"
						value="30000000~50000000">삼천만원 ~ 오천만원 <input type="radio"
						name="depositMoney" value="50000000~100000000">오천만원~일억원
					<input type="radio" name="depositMoney" value="100000000~200000000">일억원이상 <br /> <br /> 가입기간(Month) : <input type="radio"
						name="month" value="1~3" checked>1 ~ 3 <input
						type="radio" name="month" value="3~6">3 ~ 6 <input
						type="radio" name="month" value="6~9">6 ~ 9 
						
						<input type="radio" name="month" value="9~12">9 ~ 12  
						<input type="radio" name="month" value="12~24">12 ~ 24<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="month" value="24~36">24 ~ 36
					<input type="radio" name="month" value="36~48">36 ~ 48 
					<input type="radio" name="month" value="48~60">48 ~ 60 
					<br /> <br />
					
					<button type="submit" class="btn btn-primary" name="button"
						id="radioButton1">예금상품 추천받기</button>
						 </form>
						  </div>
						 </c:if>
                            <c:if test="${sessionScope.userId ==null || sessionScope.userId == '' }">
						 <p>Login is required.</p>
						 </c:if>
                </div>
            </div>
        </div>
        <!-- Social Icons-->
        <!-- For more icon options, visit https://fontawesome.com/icons?d=gallery&p=2&s=brands-->
        <div class="social-icons">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <a class="btn btn-dark m-3" href="/main.do"><i class="fa fa-home fa-fw" aria-hidden="true"></i>Home</a>
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
   	 	function out(){
		 	location.href ="<c:url value='/logout.do'/>";
		 }
        </script>
    </body>
</html>