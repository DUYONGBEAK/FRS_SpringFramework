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
                   
				<form class="form-inline" method="post" onsubmit="return true" action="/resultL.do">
				<div class="panel-body">
					결혼여부&nbsp;&nbsp; <input type="radio" name="marry" value="1">예
					<input type="radio" name="marry" value="0" checked>아니오<br /> <br />
					대학졸업여부&nbsp;&nbsp; <input type="radio" name="graduation" value="1">예
					<input type="radio" name="graduation" value="0" checked>아니오<br />
					<br /> 
					연소득(원)&nbsp;&nbsp; <input type="text" name="income"
						placeholder=" 숫자만 입력가능합니다." size="40" numberOnlyMinComma="true"
						koreanCurrency="true" required="required" value =""><br /> <br />
						<button type="submit" class="btn btn-primary" name="button"
						id="radioButton3">나의 대출 한도 조회</button>
				</div>
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
        <script src="/js/jquery-3.5.1.min.js"></script>
        <script type="text/javaScript" defer="defer">
    	$(document).on(
    			"keyup",
    			"input:text[numberOnlyMinComma]",
    			function() {
    				var strVal = $(this).val();

    				event = event || window.event;
    				var keyID = (event.which) ? event.which : event.keyCode;

    				if ((keyID >= 48 && keyID <= 57)
    						|| (keyID >= 96 && keyID <= 105) || keyID == 46
    						|| keyID == 8 || keyID == 109 || keyID == 189
    						|| keyID == 9 || keyID == 37 || keyID == 39) {

    					if (strVal.length > 1 && (keyID == 109 || keyID == 189)) {
    						return false;
    					} else {
    						return;
    					}
    				} else {
    					return false;
    				}
    			});
    	$(document).on("keyup", "input:text[numberOnlyMinComma]", function() {
    		$(this).val($(this).val().replace(/[^-\.0-9]/gi, ""));
    		$(this).val($(this).val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
    		$(this).val($(this).val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
    	});
    	$(document).on("focusout", "input:text[koreanCurrency]", function() {
    		$(this).val($(this).val().replace(",", ""));
    		$(this).val($(this).val().replace(/[^-\.0-9]/gi, ""));
    		$(this).val($(this).val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
    		if ($(this).val() != '') {
    			$(this).val($(this).val() + '원');
    		}
    	});

    	$(document).on("focus", "input:text[koreanCurrency]", function() {
    		$(this).val($(this).val().replace("원", ""));
    	});
        </script>
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