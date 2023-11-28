<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam05.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	DAO dao = new DAO();
	List<DTO> list = dao.viewCity();
%>
<style type="text/css">
	* {margin: 0; padding: 0}
	ul, li {list-style: none;}
	a {color: inherit;}
	header {text-align: center; padding: 15px; background-color: blue;}
	h1 {color: white;}
	nav > ul {display: flex; padding: 10px; background-color: green;}
	nav > ul > li {color: white; padding: 0 20px;}
	section {padding: 20px;}
	h2 {text-align: center;}
	section > table {position: relative; width: 50%; left: 25%; text-align: center}
	footer {text-align: center; padding: 10px; background-color: blue;}
	h3 {color: white;}
</style>

</head>
<body>
	<header>
		<h1>(과정평가형 기사)대기오염관측 프로그램 ver 2020-05</h1>
	</header>
	
	<nav>
		<ul>
			<li><a href="viewCity.jsp">관측지점조회</a></li>
			<li><a href="insertTest.jsp">대기오염관측등록</a></li>
			<li><a href="viewHistory.jsp">측정이력조회</a></li>
			<li><a href="viewTest.jsp">지역관측조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	<section>
		<h2>관측지점조회</h2>
		<table border="1">
			<thead>
				<tr>
					<th>관측지점</th>
					<th>관측지점명</th>
					<th>권역코드</th>
					<th>권역명칭</th>
					<th>담당전화</th>
					<th>담당자</th>
					<th>직급</th>
				</tr>
			</thead>
			<tbody>
				<% for (DTO dto : list) { %>
					<tr>
						<td><%= dto.city_code %></td>
						<td><%= dto.city_name %></td>
						<td><%= dto.area_code %></td>
						<td><%= dto.area_name %></td>
						<td><%= dto.city_tel %></td>
						<td><%= dto.city_admin %></td>
						<td><%= dto.city_level %></td>
					</tr>
				<% } %>
			</tbody>
		</table>
	</section>
	
	<footer>
		<h3>HRDK 한국인력공단 Copyright2020 All rights reserved Human Resources Development Service of Korea</h3>
	</footer>
</body>
</html>