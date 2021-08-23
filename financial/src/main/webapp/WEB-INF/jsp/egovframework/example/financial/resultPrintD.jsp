<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>FRS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link ="stylesheet" type="text/css" href="/css/fontawesome.min.css">
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
<!--         <link rel="stylesheet" href="/css/bootstrap/css/bootstrap.min.css"> -->
        <link href="css/styles1.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet" />
    <style>
	#pagination a {
	display: inline-block;
	margin-right: 5px;
	cursor: pointer;
	}
	</style>
    </head>
    <body>
    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Financial Recommend Service</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Another</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">recommendation</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="/deposit.do">deposit</a></li>
                                <li><a class="dropdown-item" href="/savings.do">Savings</a></li>
                                <li><a class="dropdown-item" href="/loan.do">Loan</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="button" onclick="location.href='/main.do'">
                            <i class="fa fa-home fa-fw"></i>
                            Home
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Deposit products</h1>
                    <p class="lead fw-normal text-white-50 mb-0">We recommend the right deposit products for you</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
		<div class="table-responsive" style="text-align: center;">
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Bank Name</th>
					<th>Product Name</th>
					<th>Basic Interest Rate</th>
					<th>Max Interest Rate</th>
					<th>Subscription Period</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${productList}" varStatus="status">
					<tr>
						<td><c:out value="${product.bank}" /></td>
						<td><c:out value="${product.productName}" /></td>
						<td><c:out value="${product.interestMin}%" /></td>
						<td><c:out value="${product.interestMax}%" /></td>
						<td><c:out value="${product.month}month" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<ul class="pagination" >

		</ul>
	</div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
            		<p class="m-0 text-center text-white">
						<small><strong>위세조</strong></small><br> 
						<small>공동대표 : 김효관/황원용 ㆍ 주소 : 한국폴리텍대학교 1208호ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 02-2186-5861</small><br>
						<small>Copyrightⓒ test.com All rights reserved.</small>
            		</p>
            	</div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="/js/jquery-3.5.1.min.js"></script>
		<script src="/css/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javaScript" defer="defer">
	function pagination() {
		var req_num_row = 5;
		var $tr = jQuery('tbody tr');
		var total_num_row = $tr.length;
		var num_pages = 0;
		if (total_num_row % req_num_row == 0) {
			num_pages = total_num_row / req_num_row;
		}
		if (total_num_row % req_num_row >= 1) {
			num_pages = total_num_row / req_num_row;
			num_pages++;
			num_pages = Math.floor(num_pages++);
		}

		/* jQuery('.pagination').append("<li><a class=\"prev\">Previous</a></li>"); */
		for (var i = 1; i <= num_pages; i++) {
				
			jQuery('.pagination').append("<button ><a>" + i + "</a></button >");
			jQuery('.pagination button :nth-child(2)').addClass("active");
			jQuery('.pagination a').addClass("pagination-link");
		}
		
		/* jQuery('.pagination').append("<li><a class=\"next\">Next</a></li>"); */


		$tr.each(function(i) {
			jQuery(this).hide();
			if (i + 1 <= req_num_row) {
				$tr.eq(i).show();
			}
		});

		jQuery('.pagination a').click('.pagination-link', function(e) {
			e.preventDefault();
			$tr.hide();
			var page = jQuery(this).text();
			var temp = page - 1;
			var start = temp * req_num_row;
			var current_link = temp;

			jQuery('.pagination button').removeClass("active");
			jQuery(this).parent().addClass("active");

			for (var i = 0; i < req_num_row; i++) {
				$tr.eq(start + i).show();
			}

			if (temp >= 1) {
				jQuery('.pagination button :first-child').removeClass("disabled");
			} else {
				jQuery('.pagination button :first-child').addClass("disabled");
			}

		});

		jQuery('.prev').click(function(e) {
			e.preventDefault();
			jQuery('.pagination button :first-child').removeClass("active");
		});

		jQuery('.next').click(function(e) {
			e.preventDefault();
			jQuery('.pagination button :last-child').removeClass("active");
		});

	}

	jQuery('document').ready(function() {
		pagination();

		jQuery('.pagination button :first-child').addClass("disabled");

	});
	</script>
    </body>
</html>