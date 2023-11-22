<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin:0; padding:0;}
	header{text-align:center; background-color: blue; padding:20px}
	header > h1{color:white;}
	ul, li{list-style: none; margin: 0; padding: 0;}
	a{text-decoration: none; color: inherit;}
	ul{background-color:yellow;display: flex;}
	li{padding: 20px 15px;}
	section{padding: 20px 10px;}
	.title{padding: 20px; text-align: center}
	table{left:33%; position: relative; width:33%}
	th{text-align: center;}
	.butbox{text-align: center;}
	footer{background-color:purple; padding: 10px; text-align: center}
</style>
</head>
<body>
	<header>
		<h1>(과정평가형 처리기사)고교성적관리프로그램 ver2019-06</h1>
	</header>
	
	<nav>
		<ul>
			<li><a href="regist.jsp">학생등록</a></li>
			<li><a href="insert.jsp">성적</a></li>
			<li><a href="score.jsp">성적조회</a></li>
			<li><a href="statistics.jsp">통계</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	<section>
		<div class="title"><h2>학생등록</h2></div>
		<table border="1">
			<tr>
				<th>학년</th>
				<td><input name="">(예) 1</td>
			</tr>
			<tr>
				<th>클래스</th>
				<td><input name="">(예) 01</td>
			</tr>
			<tr>
				<th>넘</th>
				<td><input name="">(예) 01</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="" size="48"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input name="" size="48"></td>
			</tr>
			<tr>
				<th>성</th>
				<td>
					<input type="radio" value="male" name="gender">남성
					<input type="radio" value="female" name="gender">여성
				</td>
			</tr>
			<tr>
				<th>전화</th>
				<td><input name="" size="4">-<input name="" size="4">-<input name="" size="4"></td>
			</tr>
			<tr>
				<td colspan="2" class="butbox">
					<button>학생등록</button>
					<button>다시쓰기</button>
				</td>
			</tr>
		</table>
	</section>
	
	<footer>
		copywrite
	</footer>
</body>
</html>