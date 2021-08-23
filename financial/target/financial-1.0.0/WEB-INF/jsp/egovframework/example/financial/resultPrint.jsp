<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width--device-width, initial-scale=1">
<link rel="stylesheet" href="/css/bootstrap/css/bootstrap.min.css">
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
			jQuery('.pagination').append("<li><a>" + i + "</a></li>");
			jQuery('.pagination li:nth-child(2)').addClass("active");
			jQuery('.pagination a').addClass("pagination-link");
		}

		/* jQuery('.pagination').append("<li><a class=\"next\">Next</a></li>"); */

		jQuery('.pagination').append("<li><a onclick='view();'>Home</a></li>");

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

			jQuery('.pagination li').removeClass("active");
			jQuery(this).parent().addClass("active");

			for (var i = 0; i < req_num_row; i++) {
				$tr.eq(start + i).show();
			}

			if (temp >= 1) {
				jQuery('.pagination li:first-child').removeClass("disabled");
			} else {
				jQuery('.pagination li:first-child').addClass("disabled");
			}

		});

		jQuery('.prev').click(function(e) {
			e.preventDefault();
			jQuery('.pagination li:first-child').removeClass("active");
		});

		jQuery('.next').click(function(e) {
			e.preventDefault();
			jQuery('.pagination li:last-child').removeClass("active");
		});

	}

	jQuery('document').ready(function() {
		pagination();

		jQuery('.pagination li:first-child').addClass("disabled");

	});
	function view() {
		location.href = "<c:url value='/main.do'/>";
	}
</script>
<style>
#pagination a {
	display: inline-block;
	margin-right: 5px;
	cursor: pointer;
}
</style>
<h1 align="center">금융상품 추천</h1>
<p>
</p>
</head>
<body>
	<div class="table-responsive">
		<h2>저희가 추천하는 상품 리스트는...</h2>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>은행명</th>
					<th>상품명</th>
					<th>기본이율</th>
					<th>최고이율</th>
					<th>가입기간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${productList}" varStatus="status">
					<tr>
						<td><c:out value="${product.bank}" /></td>
						<td><c:out value="${product.productName}" /></td>
						<td><c:out value="${product.interestMin}" /></td>
						<td><c:out value="${product.interestMax}" /></td>
						<td><c:out value="${product.month}개월" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<ul class="pagination">

		</ul>
	</div>
</body>
<footer>
	<p class="text-center">
		<small><strong>위세조</strong></small><br> <small>공동대표 :
			김효관/황원용 ㆍ 주소 : 한국폴리텍대학교 1208ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
		<small>Copyrightⓒ test.com All rights reserved.</small>
	</p>
</footer>
</html>