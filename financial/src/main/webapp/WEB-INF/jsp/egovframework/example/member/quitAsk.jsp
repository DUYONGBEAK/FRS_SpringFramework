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
                    <div class="col">
                   
				<form class="form-inline" method="post" onsubmit="return true" action="/realQuit.do">
				<div class="panel-body">
					<input type="hidden" name="quitUserId" value="${quitUserId }">
					<input type="hidden" name="quituserName" value="${quituserName }">
					<h3>${quituserName }님  저희 서비스를 더이상 사용하지 않으려는 이유를 알려주세요!</h3>
					<p>더 나은 서비스를 만들기위해 노력하겠습니다.</p><br />
					<input type="radio" name="opinion" value="서비스가 부족하다." checked>서비스가 부족하다. <br />
					<input type="radio" name="opinion" value="디자인이 마음에 들지 않는다." checked>디자인이 마음에 들지 않는다. <br />
					<input type="radio" name="opinion" value="딱히 이유가 없다" checked>딱히 이유가 없다. <br />
					<br /> 
					기타 : <input type="text" name="etcOpinion"
						placeholder="마음껏  작성해주세요." size="40" required="required"><br /> <br />
						<button type="submit" class="btn btn-primary" name="quitbutton"
						id="radioButton2">탈퇴하기</button>
						<button type="button" class="btn btn-primary" name="mainbutton"
						id="radioButton3" onclick="moveFun();">계속 서비스 이용하기</button>
							</div>
						</form>
					</div>
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
        </script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="/js/jquery-3.5.1.min.js"></script>
		<script src="/css/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javaScript" defer="defer">
        function moveFun(){
        	location.href = "<c:url value='/main.do'/>";
        }
        </script>
    </body>
</html>