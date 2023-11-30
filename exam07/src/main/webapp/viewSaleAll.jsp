<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam07.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	DAO dao = new DAO();
	List<DTO> list = dao.viewSaleAll();
	DecimalFormat f = new DecimalFormat("###,###");
	int totalPrice = 0;
%>

<style>
	* {margin:0; padding:0;}
	ul, li {list-style: none;}
	a {color: inherit; text-decoration: none;}
	header {padding : 20px; background-color: blue; text-align: center;}
	h1 {color: white;}
	nav {padding: 15px; background-color: purple;}
	ul {display: flex;}
	li {padding: 0 10px; color: blue;}
	section {padding: 20px;}
	h2 {text-align: center; padding: 10px 0;}
	table {position: relative; width: 70%; left: 15%; text-align: center;}
	table > tbody > tr > td:last-child {text-align: right;}
	footer {padding: 15px; background-color: blue; text-align: center;}
</style>
</head>
<body>
	<header>
		<h1>(과정평가형 정보처리산업기사)주유소 관리 프로그램 Ver2020-10</h1>
	</header>
	
	<nav>
		<ul>
			<li>
				<a href="insertSale.jsp">매출등록</a>
			</li>
			<li>
				<a href="viewSaleAll.jsp">전체매출조회</a>
			</li>
			<li>
				<a href="viewSale.jsp">일차별매출평가</a>
			</li>
			<li>
				<a href="index.jsp">홈</a>
			</li>
		</ul>
	</nav>
	
	<section>
		<h2>전체매출조회</h2>
		<table border="1">
			<thead>
				<tr>
					<th>매출번호</th>
					<th>주유일자</th>
					<th>유종</th>
					<th>주유량</th>
					<th>결제방법</th>
					<th>회원성명</th>
					<th>회원번호</th>
					<th>전화번호</th>
					<th>카드번호</th>
					<th>금액</th>
				</tr>
			</thead>
			<tbody>
				<% for(DTO dto : list) { 
						totalPrice += Integer.parseInt(dto.oilcost);
					%>
					<tr>
						<td><%= dto.saleno %></td>
						<td><%= dto.oildate.substring(0, 4) + "년" + dto.oildate.substring(4, 6) + "월" + dto.oildate.substring(6) + "일" %></td>
						<td><%= dto.oilname %></td>
						<td><%= dto.amount %></td>
						<td><%= dto.paytype %></td>
						<td><%= dto.custname %></td>
						<td><%= dto.custno %></td>
						<td><%= dto.custtel %></td>
						<td><%= dto.creditcard %></td>
						<td>\<%= f.format(Integer.parseInt(dto.oilcost)) %></td>
					</tr>
				<% } %>
				<tr>
					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
					<td>매출총액</td>
					<td>\<%= f.format(totalPrice) %></td>
				</tr>
			</tbody>
		</table>
	</section>
	
	<footer>
		<h3>HRDKOREA Copyrightⓒ2020 All rights reserve. Human Resources Develepment Service of Korea</h3>
	</footer>
</body>
</html>