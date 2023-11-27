<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.*"%>

<%
DAO dao = new DAO();
List<DTO> list = dao.productView();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

header {
	text-align: center;
	padding: 10px;
	background-color: blue;
}

header>h1 {
	color: white;
	display: block
}

ul, li {
	list-style: none;
}

nav {
	padding: 10px;
	background-color: purple;
}

nav>ul {
	display: flex;
}

nav>ul>li {
	padding: 10px;
}

nav>ul>li>a {
	color: inherit;
	text-decoration: none;
}

section {
	padding: 10px 30px;
}

section>h2 {
	text-align: center;
	padding: 30px 0;
}

section>table {
	position: relative;
	left: 25.5%;
	width: 50%;
	text-align: center;
}

footer {
	padding: 20px 0px;
	background-color: blue;
	text-align: center;
}
</style>
</head>
<body>
	<header>
		<h1>(과정평가형)스마트공장 공정관리 프로그램 ver2019-09</h1>
	</header>

	<nav>
		<ul>
			<li><a href="productView.jsp">제품조회</a></li>
			<li><a href="workView.jsp">지시조회</a></li>
			<li><a href="workInsert.jsp">공정등록</a></li>
			<li><a href="processView.jsp">공정조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>

	<section>
		<h2>제품조회</h2>
		<table border="1">
			<thead>
				<tr>
					<th>제품코드</th>
					<th>제품명</th>
					<th>제품규격</th>
					<th>제품구</th>
					<th>제품단가</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (DTO dto : list) {
				%>
					<tr>
						<td><%=dto.p_code %></td>
						<td><%=dto.p_name %></td>
						<td><%=dto.p_size %></td>
						<td><%=dto.p_type %></td>
						<td><%=dto.p_price %></td>
					</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</section>

	<footer>
		<span>HRDKOREA Copyright@2016 All rights reserve. Human
			Resources Development Service of Korea</span>
	</footer>
</body>
</html>