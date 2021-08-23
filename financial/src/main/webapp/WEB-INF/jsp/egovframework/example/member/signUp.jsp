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
                    <h2 class="fst-italic lh-1 mb-4">Please enter your information</h2>
                    <div class="col">
            <!-- 본문 들어가는 부분 -->

            <form name="frm" class="form-horizontal" role="form" method="post" action="/returnMain.do">
                <div class="form-group">
                    <div class="col-lg-10" id="provision">
                    Terms of Service
                        <textarea class="form-control" rows="5" style="resize:none" readonly>
이거 만드는데 1주 하고도 
3일을 갈아넣었다.
불만 없이 잘 사용해라.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                                Agree
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="YY">        
							Of course agree
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">ID</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="id" name="id" data-rule-required="true" placeholder="ID" maxlength="15" >
                    </div>
                </div>
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="pw" name="pw" name="excludeHangul" data-rule-required="true" placeholder="Password" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <div class="col-lg-10">
                    Password Check
                        <input type="password" class="form-control" id="passwordCheck" name="passwordCheck" data-rule-required="true" placeholder="Password Check" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divName">
                    <label for="inputName" class="col-lg-2 control-label">Name</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" id="name" name="name" data-rule-required="true" placeholder="Enter" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divPhoneNumber">
                    <div class="col-lg-10">
                    Phone Number
                        <input type="tel" class="form-control onlyNumber" id="phone_number" name="phone_number" data-rule-required="true" placeholder="Enter only numbers" maxlength="11">
                    </div>
                </div><br/>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <input type="submit" class="btn btn-primary" value="Sign In"></input>
                    </div>
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
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="/js/jquery-3.5.1.min.js"></script>
		<script src="/css/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javaScript" defer="defer">
        function moveFun(){
        	location.href = "<c:url value='/returnMain.do'/>";
        }
        
        </script>
    </body>
</html>