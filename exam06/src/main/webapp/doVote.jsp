<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, exam06.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	section > table {position: relative; width: 50%; left: 25%;}
	th, tr:last-child > td {text-align: center;}
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
			<tr>
				<th>주민번호</th>
				<td><input name="v_jumin"/>예)9901011000001</td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input name="v_name"/></td>
			</tr>
			<tr>
				<th>후호</th>
				<td>
					<select name="m_no">
						<option value="" selected="selected">후호</option>
						<option value="1">[1] 김후</option>
						<option value="2">[2] 이후</option>
						<option value="3">[3] 오후</option>
						<option value="4">[4] 조후</option>
						<option value="5">[5] 최후</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>투표시간</th>
				<td><input name="v_time"/></td>
			</tr>
			<tr>
				<th>투표장소</th>
				<td><input name="v_area"/></td>
			</tr>
			<tr>
				<th>유권자확인</th>
				<td>
					<input type="radio" name="v_confirm" value="Y"/>확인
					<input type="radio" name="v_confirm" value="N"/>미확인
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" onClick="send()" value="투표하기"/>
					<input type="button" onClick="re()" value="다시쓰기"/>
				</td>
			</tr>
		</table>
	</section>
	
	<footer>
		<h3>HRDKOREA Copyrightⓒ2020 All rights reserved. Human Resources Development Service of Korea</h3>
	</footer>
</body>
</html>