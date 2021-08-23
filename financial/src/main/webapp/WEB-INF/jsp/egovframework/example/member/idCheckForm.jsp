<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>

<%@page import="ch01.Db_Conn"%>

<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// DB 연결
	Connection conn = Db_Conn.connection();
	// 아이디 받아오기
	String id = request.getParameter("id");
	// 아이디 찾는 쿼리 생성
	String sql = "select * from customer where id= '" + id + "'";
	// 쿼리 실행
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	if (rs.next()) { // 데이터 존재
		// 사용하는 아이디
		out.print("0");
	}
	else {
		// 사용하지 않는 아이디
		out.print("1");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요
</body>
</html>