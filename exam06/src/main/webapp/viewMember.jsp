<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam06.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 
	DAO dao = new DAO();
	List<DTO> list = dao.viewMember();
%>
<style>
	* {margin: 0; padding: 0}
	ul li {list-style: none;}
	a {text-decoration: none; color: inherit;}
	header {padding:20px; background-color: blue; text-align: center;}
	h1 {color: white;}
	ul {display: flex; background-color: purple;}
	ul > li {padding:15px 10px; color:white}
	section {padding:20px;}
	h2 {text-align: center; padding:10px 0;}
	section > table {position: relative; width: 50%; left: 25%; text-align: center;}
	footer {padding:15px; background-color: blue; text-align: center;}
	h3 {color: white;}
</style>
</head>
<body>
	<header>
		<h1>(과정평가형 기사)지역구의원투표 프로그램 ver 2020-05</h1>
	</header>
	
	<nav>
		<ul>
			<li><a href="viewMember.jsp">후조회</a></li>
			<li><a href="doVote.jsp">투표하기</a></li>
			<li><a href="viewVote.jsp">투표검수조회</a></li>
			<li><a href="viewRanking.jsp">등수</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	<section>
		<h2>과정평가형 자격 CB</h2>
		<table border="1">
			<thead>
				<tr>
					<th>후호</th>
					<th>성명</th>
					<th>소속정당</th>
					<th>학력</th>
					<th>주민호</th>
					<th>지역구</th>
					<th>대표전화</th>
				</tr>
			</thead>
			<tbody>
				<% for (DTO dto : list) { %>
					<tr>
						<td><%=dto.m_no %></td>
						<td><%=dto.m_name %></td>
						<td><%=dto.p_code %></td>
						<td><%=dto.p_school %></td>
						<td><%=dto.m_jumin %></td>
						<td><%=dto.m_city %></td>
						<td><%=dto.p_tel %></td>
					</tr>
				<% } %>
			</tbody>
		</table>
	</section>
	
	<footer>
		<h3>HRDKOREA Copyrightⓒ2020 All rights reserved. Human Resources Development Service of Korea</h3>
	</footer>
</body>
</html>